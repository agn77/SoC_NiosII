This lab was composed of two parts.

Part 1: Create the SoC design using Platform Designer on Quartus. 
We use IP cores on Platform Designer to select all the components of our system. 
We use the Nios II processor, 32-bit RAM memory module with 65kbytes of memory size,
Jtag Uart, push button and switch inputs and LED outputs.  We wire the appropiate ports
and generate the HDL for the working system we use in the design. The TOP level file 
instantiates the Qsys design to compile our design and programm the DE10 FPGA.

Part 2: The simple software design is is created from a Nios II appplication and BSP from 
one of the provided templates. We call the use of LED's to test our design from the function in one
of the header files in the main.c file. A delay is added to see visually see the increment counter 
on change the LED's flashing on the FPGA board. 
