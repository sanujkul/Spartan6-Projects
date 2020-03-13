----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:17:35 03/13/2020 
-- Design Name: 
-- Module Name:    FSM - Behavioral 
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

entity FSM is
    Port ( num : in  STD_LOGIC_VECTOR (2 downto 0);
           sw : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rndisp : out  STD_LOGIC_VECTOR (2 downto 0);
           W : out  STD_LOGIC := '0';
           L : out  STD_LOGIC := '0';
           PA : out  STD_LOGIC := '1');
end FSM;


architecture Behavioral of FSM is

-- COMPONENT DECLARATION --
	component RNG
		 Port ( CE : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           rn : out  STD_LOGIC_VECTOR (2 downto 0));
	end component;
	
	component comaparor3bit
		Port ( rn : in  STD_LOGIC_VECTOR (2 downto 0);
           num : in  STD_LOGIC_VECTOR (2 downto 0);
           cmp : in  STD_LOGIC;
           eq : out  STD_LOGIC);
	end component;
	
	component display
		Port ( rand : in  STD_LOGIC_VECTOR (2 downto 0);
           DE : in  STD_LOGIC;
           Display :out  STD_LOGIC_VECTOR (2 downto 0));
	end component;
-- internal SIGNALS for datapath with initial conditions
	signal CE : STD_LOGIC := '1';  
	signal CMP, DE : STD_LOGIC :='0';
	signal EQ : STD_LOGIC;
	signal rn : STD_LOGIC_VECTOR (2 downto 0);
	
-- FSM controlling states/signals
	--Both present and next state are in range 0 to 5 and initialized to 0;
	signal pState, nState : integer range 0 to 5 := 0;

begin

-- COMPONENT INSTANTIATION ---
	rng01 : RNG port map (CE,clk,rn);
	cmp01 : comaparor3bit port map (rn,num,cmp,EQ);
	disp01: display port map (rn,DE,rndisp);

-- FSM LOGIC: (To make it more readable, outputs will be assigned in diff process block)
	Process (clk)
	begin
		if(clk'event and clk='1') then
		
			case(pState) is
				when 0 => if(sw = '0') then
								nState <= 0; --no change in FSM OUTPUTS
							 else
								nState <= 1;
							 end if;
							 
				when 1 => if(sw = '1') then
								nState <= 1; --no change in FSM OUTPUTS
							 else
								nState <= 2;
							 end if;
							 
				when 2 => if(eq = '1') then
								nState <= 3; --win state
							 else
								nState <= 4;
							 end if;
				when 3 => if(sw = '0') then
								nState <= 3; --no change in FSM OUTPUTS
							 else
								nState <= 5;
							 end if;
							 
				when 4 => if(sw = '0') then
								nState <= 4; --no change in FSM OUTPUTS
							 else
								nState <= 5;
							 end if;
				
				when 5 => if(sw = '1') then
								nState <= 5; --no change in FSM OUTPUTS
							 else
								nState <= 0;
							 end if;
			end case;		
		end if;
	end Process;

--Update present state and the outputs whenever state has to change
	Process (nState)
	begin
		case(nState) is
			when 0 => pState <= 0;
						 PA<='1'; W<='0' ; L<='0' ; CE<='1' ; CMP<='0' ; DE<='0';
			when 1 => pState <= 1;
						 PA<='0'; W<='0' ; L<='0' ; CE<='0' ; CMP<='1' ; DE<='0';
			when 2 => pState <= 2;
						 PA<='0'; W<='0' ; L<='0' ; CE<='0' ; CMP<='1' ; DE<='1';
			when 3 => pState <= 3;
						 PA<='0'; W<='1' ; L<='0' ; CE<='0' ; CMP<='0' ; DE<='1';
			when 4 => pState <= 4;
						 PA<='0'; W<='0' ; L<='1' ; CE<='0' ; CMP<='0' ; DE<='1';
			when 5 => pState <= 5;
						 PA<='1'; W<='0' ; L<='0' ; CE<='1' ; CMP<='0' ; DE<='0';
		end case;
	end Process;
	
end Behavioral;

