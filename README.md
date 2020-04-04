# Spartan6-Projects

This repository contains projects for Xilinx Spartan 6 FPGA written in VHDL.  

They are based on the concepts and techniques learned in following courses :  
1. ECD14 : Digital System Design using VHDL/Verilog by Abhay Sharma
2. ECD09 : Computer Architecture and Digital Hardware Design by Prof. D.V. Gadre. 

Board used is MINI_SP6-SPARTAN 6 FPGA DEVELOPMENT BOARD bought from  
FPGA Tech Solutions, https://fpgatechsolution.com/product/mini-sp6/

[How to upload ISE code to the board?](https://www.youtube.com/watch?v=ueFb1KmcIBM) Thank you Apoorv Aryan for this demonstration!

## Projects Description 

### 1. Single-Dice-Game. 
This is a simple game based on luck. Player chooses a 3 bit number from 1 to 7 on the DIP Switches 2,3,4 and presses the button. If the random number generated by LFSR Random Number generator (displayed on LD5,LD6,LD7) matches the number that user selected then a green light will indicate a win, otherwise blue light will indicate player has lost the game.

![](https://i.imgur.com/fOJ01yd.jpg)  ![](https://i.imgur.com/eNp2Fle.jpg)

### 2. UART
This project implement a UART TX and RX Component working at 9600 baud rate, 8N1. These RX and TX componets are instantiated in the main file
and used is following way:  
1. The data that FPGA receives on RX_Line is displayed on the 8 USER LEDS.
[Video demonstration:](https://www.youtube.com/watch?v=kBL-hSgXtCE)
2. To transmit, USER selects 7 bit number from using SW1 DIP switch and K4, K3, K2 Push buttons. Then to transmit the data over TX_line, user presses K1 Push Button.  
[Video demonstration:](https://www.youtube.com/watch?v=WnD7BVDf550)
##### Feature: The UART RX and TX line can receive and trasmit data simultaneously. 

### 3. PWM  
This project demonstarted PWM.  
Working: counter counts increases form 0 to 99 and resets to 0 at 100 at every positive clock edge. User can select duticycle using DIP Switches and Push Buttons available on development board. The PWM_out pin remains HIGH for the count = [0,duticycle) and LOW for count = [duticycle, 100) and therefore we can achieve 0% to 100% duticycle by this method.
Folowing images shows coontrolling LED brightness with:   
0%, 1% and 16% duticycles respectively.   
![](https://i.imgur.com/T57K5oP.jpg) ![](https://i.imgur.com/4yakIK3.jpg) ![](https://i.imgur.com/a5MuBmY.jpg)  
and 32%, 64% and 100% duticycles respectively:  
![](https://i.imgur.com/1ZxoZbc.jpg) ![](https://i.imgur.com/ZdLQefE.jpg) ![](https://i.imgur.com/Sqq8mmH.jpg)
