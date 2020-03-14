----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:10:24 03/14/2020 
-- Design Name: 
-- Module Name:    UART - Behavioral 
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

entity UART is
    Port ( clk : in  STD_LOGIC;											--OUR CLOCK IS 12MHz, baud rate is 9600
           tx_switch : in  STD_LOGIC;
           tx_data_in : in  STD_LOGIC_VECTOR (7 downto 0);		--user is selecting what to transmit
           rx_data_out : out  STD_LOGIC_VECTOR (7 downto 0);
           uart_tx : out  STD_LOGIC;
           uart_rx : in  STD_LOGIC);
end UART;

architecture Behavioral of UART is
	component TX
		Port ( clk : in  STD_LOGIC;
           start : in  STD_LOGIC;
           busy : out  STD_LOGIC;
           data : in  STD_LOGIC_VECTOR (7 downto 0);
           tx_line : out  STD_LOGIC);
	end component;
	
	component RX
		Port ( clk : in  STD_LOGIC;
           rx_line : in  STD_LOGIC;
           data : out  STD_LOGIC_VECTOR (7 downto 0);
           busy : out  STD_LOGIC);
	end component;
	
	signal tx_start: STD_LOGIC := '0'; 
	signal tx_busy, rx_busy : STD_LOGIC;
	
	signal pState_tx : integer range 0 to 3 := 0;
	
begin
	tx_UART0: tx port map(clk, tx_start, tx_busy, tx_data_in, uart_tx);
	rx_UART0: rx port map(clk, uart_rx, rx_data_out, rx_busy);
	
	--Tx_UART0 Process block
	Process(clk)
	begin
		if(clk'event and clk='1') then
			case (pState_tx) is
				when 0 =>   if(tx_switch = '0') then
									pState_tx <= 0;
									tx_start <= '0';
								elsif(tx_switch = '1') then
									pState_tx <= 1;
									tx_start <= '0';
								end if;
				when 1 =>   if(tx_switch = '1') then
									pState_tx <= 1;
									tx_start <= '0';
								else
									pState_tx <= 2;
									tx_start <= '1';
								end if;
				when 2 =>   pState_tx <=3;
								tx_start <= '0';
				when 3 =>   if(tx_busy = '1') then
									pState_tx <= 3;
									tx_start <= '0';
								else
									pState_tx <= 0;
									tx_start <= '0';
								end if;
								
			end case;
		end if;
	end Process;

end Behavioral;

