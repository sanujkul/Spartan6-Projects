----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:54:42 03/13/2020 
-- Design Name: 
-- Module Name:    comaparor3bit - Behavioral 
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

entity comaparor3bit is
    Port ( rn : in  STD_LOGIC_VECTOR (2 downto 0);
           num : in  STD_LOGIC_VECTOR (2 downto 0);
           cmp : in  STD_LOGIC;
           eq : out  STD_LOGIC);
end comaparor3bit;

architecture Behavioral of comaparor3bit is

begin
	eq <= '0' when cmp='0' else
		  '1' when num=rn else
		  '0' when num/=rn;

end Behavioral;

