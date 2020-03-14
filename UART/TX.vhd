----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:32:51 03/14/2020 
-- Design Name: 
-- Module Name:    TX - Behavioral 
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

entity TX is
    Port ( clk : in  STD_LOGIC;
           start : in  STD_LOGIC;
           busy : out  STD_LOGIC;
           data : in  STD_LOGIC_VECTOR (7 downto 0);
           tx_line : out  STD_LOGIC);
end TX;

architecture Behavioral of TX is
	signal prescl : integer range 0 to 1250 :=0;  --Our Board clock has frequency 12 MHz. Therefore for 9600 baud
	signal index :  integer range 0 to 9 := 0;    --To keep track which bit to send
	signal datafll: std_logic_vector (9 downto 0);--Will have complete trasmitting signal
	signal tx_flag: std_logic := '0';
begin
	
	Process(clk)
	
	begin
	
		if (clk'event and clk='1') then
			if (tx_flag='0' and start='1') then --'start' 1 is handshake by main code that indicates that this
				tx_flag <= '1';						  --transmitter component should start transmitting 
				busy <= '1';						  --Indicates (handshake) that transmitter is busy
				datafll <= '1' & data & '0';	  --10 bit data = (stopbit)+(databit)+(startbit)
			end if;
			
			if (tx_flag='1') then						--Then we are in transmission mode
				if( prescl < 1250) then
					prescl <= prescl + 1;
				else
					prescl <= 0;
				end if;
				
				if (prescl = 625) then 			--if we are at half count, then send
					tx_line <= datafll(index);
					
					if(index < 9) then 				--i.e all bits are not yet send, prepare next bit
						index <= index + 1;
					else
						tx_flag <= '0';
						busy <= '0';
						index <= 0;
					end if;
				end if;
			end if;
			
		end if;
	end Process;

end Behavioral;

