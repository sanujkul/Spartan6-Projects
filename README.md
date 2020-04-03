# Spartan6-Projects

This repository contains projects for Xilinx Spartan 6 FPGA written in VHDL. 
Board used is MINI_SP6-SPARTAN 6 FPGA DEVELOPMENT BOARD bought from  
FPGA Tech Solutions, https://fpgatechsolution.com/product/mini-sp6/

## Projects Description 

### 1. Single-Dice-Game. 
This is a simple game based on luck. Player chooses a 3 bit number from 1 to 7 and presses the button.
If the random number generated by LFSR Random Number generator matches the number that user selected 
then a blue light will indicate a win, otherwise red light will indicate player has lost the game.

### 2. UART
This project implement a UART TX and RX Component working at 9600 baud rate, 8N1. These RX and TX componets are instantiated in the main file
and used is following way:  
1. The data that FPGA receives on RX_Line is displayed on the 8 USER LEDS.  
2. To transmit, USER selects 7 bit number from using SW1 DIP switch and K4, K3, K2 Push buttons. Then to transmit the data over TX_line, user presses K1 Push Button.  
##### Feature: The UART RX and TX line can receive and trasmit data simultaneously. 
