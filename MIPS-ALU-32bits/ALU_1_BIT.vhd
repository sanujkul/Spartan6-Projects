----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:54:27 04/13/2020 
-- Design Name: 
-- Module Name:    ALU_1_BIT - Behavioral 
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
-- | Operation | Function |
--	|	00 00		| AND
-- |	00 01		| OR
--	|	00 10		| SUM
-- |	01 10		| SUBTRACT
--	|	01 11		| Set on less than
-- |	11 00		| NOR



entity ALU_1_BIT is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           less : in  STD_LOGIC;
			  carryIn: in STD_LOGIC;
           Operation : in  STD_LOGIC_VECTOR (3 downto 0); -- Ainvert, Bnegate,2 out MUX select lines
           result : out  STD_LOGIC;
			  carryOut: out STD_LOGIC);
end ALU_1_BIT;

architecture Behavioral of ALU_1_BIT is

component Mux2x1
    Port ( i : in  STD_LOGIC_VECTOR(1 downto 0);
           s0 : in  STD_LOGIC;
           out0 : out  STD_LOGIC);
end component;

component Mux4x2
    Port ( i : in  STD_LOGIC_VECTOR (3 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           out0 : out  STD_LOGIC);
end component;

signal mux4x2_input : STD_LOGIC_VECTOR(3 downto 0);
signal notA, notB, mux_out_A, mux_out_B : STD_LOGIC;
begin
	--2x1 MUX for choosing A,~A or B,~B
	A_mux : Mux2x1 port map(i(0)=>a, i(1)=> notA, s0=>Operation(3), out0=>mux_out_A);
	B_mux : Mux2x1 port map(i(0)=>b, i(1)=> notB, s0=>Operation(2), out0=>mux_out_B);
	
	--4x2 MUX for choosing final result
	F_mux : Mux4x2 port map(mux4x2_input, Operation(1 downto 0), result);
	
	notA <= not A;
	notB <= not B;
	
	mux4x2_input(0) <= mux_out_A and mux_out_B;		--AND (if Operations(3) = Operations(2) = 0) and NOR (if Operations(3) = Operations(2) = 1)
	mux4x2_input(1) <= mux_out_A or mux_out_B;		--OR
	mux4x2_input(2) <= (mux_out_A xor mux_out_B) xor carryIn; --SUM (if Operations(3)=0, Operations(2) = 0) and SUBTRACT (if Operations(3)=0, Operations(2) = 1)
	mux4x2_input(3) <= less;
	
	--Full adder inputs are mux_out_A, mux_out_B, carryIn
	carryOut <= (mux_out_A and mux_out_B) or (mux_out_B and carryIn) or (mux_out_A and carryIn);

end Behavioral;

