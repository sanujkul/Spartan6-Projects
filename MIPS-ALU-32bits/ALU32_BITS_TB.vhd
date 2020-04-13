--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:57:56 04/13/2020
-- Design Name:   
-- Module Name:   C:/Users/Sanuj Kulshrestha/Documents/Xilinx-Workspace/MIPS-ALU-32bits/ALU32_BITS_TB.vhd
-- Project Name:  MIPS-ALU-32bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_32_BITS
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALU32_BITS_TB IS
END ALU32_BITS_TB;
 
ARCHITECTURE behavior OF ALU32_BITS_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_32_BITS
    PORT(
         a : IN  std_logic_vector(31 downto 0);
         b : IN  std_logic_vector(31 downto 0);
         ALUctrl : IN  std_logic_vector(3 downto 0);
         ALUOut : OUT  std_logic_vector(31 downto 0);
         Zero : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(31 downto 0) := (2=>'1',5=>'1',11=>'1', others => '0');
   signal b : std_logic_vector(31 downto 0) := (31=>'0',30=>'0',25=>'0', others => '1');
   signal ALUctrl : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ALUOut : std_logic_vector(31 downto 0);
   signal Zero : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
signal clock : STD_LOGIC := '0';
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_32_BITS PORT MAP (
          a => a,
          b => b,
          ALUctrl => ALUctrl,
          ALUOut => ALUOut,
          Zero => Zero
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for 53ns;
		clock <= '1';
		wait for 53ns;
   end process;
 
	process(clock)
	begin
		--on rising clock update input a and b
		if(clock'event and clock='1') then
			a <= a + '1';
			b <= b - '1';
		end if;
		--on falling clock update ALUctrl
		if(clock'event and clock='0') then
			ALUctrl <= ALUctrl + 1;
		end if;
		
	end process;


END;
