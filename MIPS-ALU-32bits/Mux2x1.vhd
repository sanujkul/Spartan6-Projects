----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:01:07 04/13/2020 
-- Design Name: 
-- Module Name:    Mux2x1 - Behavioral 
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

entity Mux2x1 is
    Port ( i : in  STD_LOGIC_VECTOR(1 downto 0);
           s0 : in  STD_LOGIC;
           out0 : out  STD_LOGIC);
end Mux2x1;

architecture Behavioral of Mux2x1 is

begin
	out0 <= (i(0) and (not s0)) or (i(1) and s0);
end Behavioral;

