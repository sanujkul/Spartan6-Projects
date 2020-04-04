----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:48:28 04/03/2020 
-- Design Name: 
-- Module Name:    pwm - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pwm is
    Port ( duticycle : in  STD_LOGIC_VECTOR (7 downto 0);
			  clk : in  STD_LOGIC;
           pwm_out : out  STD_LOGIC);
end pwm;

architecture Behavioral of pwm is
signal count : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
begin

Process(clk) 
begin	
	if(clk'event and clk='1') then
		if(count = "00000000") then
			if(duticycle = "00000000") then
				pwm_out <= '0';
			else
				pwm_out <= '1';	--PWM out is set high
			end if;
		end if;
		
		if(count = duticycle) then
			pwm_out <= '0';		--make it LOW
		end if;
		
		--check if count is completed to 100 or not
		--if complete, reset count to 0 and set pwm_pin  HIGH
		if(count = "01100011") then	--if count is equal to 99 then set it to 0
			count <= (others => '0');
		else 
			count <= count + 1;
		end if;
		
		
	end if;

end process;

end Behavioral;

