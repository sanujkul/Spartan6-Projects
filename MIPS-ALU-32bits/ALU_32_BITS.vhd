----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:27:21 04/13/2020 
-- Design Name: 
-- Module Name:    ALU_32_BITS - Behavioral 
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

-- Table
-- | ALUCtrl   | Function |
--	|	00 00		| AND
-- |	00 01		| OR
--	|	00 10		| SUM
-- |	01 10		| SUBTRACT            (performs A - B = A + (~B) + 1)
--	|	01 11		| Set on less than    (performs A - B)
-- |	11 00		| NOR

entity ALU_32_BITS is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUctrl : in  STD_LOGIC_VECTOR (3 downto 0);
           ALUOut : out  STD_LOGIC_VECTOR (31 downto 0);
           Zero : out  STD_LOGIC);
end ALU_32_BITS;

architecture Behavioral of ALU_32_BITS is

component ALU_1_BIT 
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           less : in  STD_LOGIC;
			  carryIn: in STD_LOGIC;
           Operation : in  STD_LOGIC_VECTOR (3 downto 0); -- Ainvert, Bnegate,2 out MUX select lines
           result : out  STD_LOGIC;
			  carryOut: out STD_LOGIC;
			  set: out STD_LOGIC);
end component;

signal less : STD_LOGIC_VECTOR(31 downto 0):= (others => '0'); 
signal carry_in : STD_LOGIC_VECTOR(32 downto 0);
signal set : STD_LOGIC_VECTOR(32 downto 0);

begin
	
	carry_in(0) <= '1' when (ALUctrl(3)='0' and ALUctrl(2)='1') else --set it 1 if it is subtract or SLT instruction
						'0';
	less(0) <= set(31);
	
	ALUs: for k in 0 to 31 generate
		ALUi : ALU_1_BIT port map(a(k),b(k),less(k),carry_in(k), ALUctrl, ALUout(k), carry_in(k+1), set(k));
	end generate ALUs;
	
	
end Behavioral;

