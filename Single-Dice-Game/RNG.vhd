----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:03:30 03/13/2020 
-- Design Name: 
-- Module Name:    RNG - Behavioral 
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

entity RNG is
    Port ( CE : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           rn : out  STD_LOGIC_VECTOR (2 downto 0));
end RNG;

architecture Behavioral of RNG is

begin
	Process(clk)
	variable count : STD_LOGIC_VECTOR (2 downto 0) := "101";  -- Initail feed to the LFSR
	variable x : STD_LOGIC := '0';
	begin
		if(clk'event and clk='1') then
			if(CE = '0') then
				rn <= count;
			else
				x := count(2) xor count(1);
				count := count(1 downto 0) & x;
			end if;
		end if;
	end Process;
end Behavioral;

