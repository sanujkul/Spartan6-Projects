----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:40:36 03/14/2020 
-- Design Name: 
-- Module Name:    RX - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RX is
    Port ( clk : in  STD_LOGIC;
           rx_line : in  STD_LOGIC;
           data : out  STD_LOGIC_VECTOR (7 downto 0);
           busy : out  STD_LOGIC);
end RX;

architecture Behavioral of RX is
	signal datafll : STD_LOGIC_VECTOR (9 downto 0);
	signal rx_flag :STD_LOGIC := '0';
	signal prescl : integer range 0 to 1250 :=0;  --Our Board clock has frequency 12 MHz. Therefore for 9600 baud
	signal index :  integer range 0 to 9 := 0;    --To keep track which bit to send
begin

	Process(clk)
	
	begin
		if(clk'event and clk='1') then
			if(rx_flag='0' and rx_line='0') then --it means we have to start reading the data on rx_line
				index <= 0;
				prescl <= 0;
				busy <= '1';
				rx_flag <= '1';
			end if;
			
			if(rx_flag = '1') then --it means we are at present recieving data
				datafll(index) <= rx_line;          --keep updating this bit until next bit time comes
				
				if(prescl < 1250) then
					prescl <= prescl + 1;
				else
					prescl <= 0;
				end if;
				
				if(prescl = 625) then              -- This bit is read, now next bit
					if(index < 9) then
						index <= index + 1;
					else										--All bits are stored in datafll
						if(datafll(0) = '0' and datafll(9)='1') then 
							data <= datafll(8 downto 1);
						else
							data <= (others => '0');
						end if;
						rx_flag <= '0';
						busy <= '0';
					end if;
				end if;
			end if;
		end if;
	end Process;


end Behavioral;

