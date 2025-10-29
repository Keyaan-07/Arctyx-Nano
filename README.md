# Arctyx Nano

Arctyx Nano is an FPGA development board consisting of the ICE40UP5K FPGA from [Lattice](https://latticesemi.com) Semiconductor. Arctyx Nano also consists of the RP2350A MCU from [Raspberry Pi](https://raspberrypi.com).  

Check out the board on [KiCanvas](https://kicanvas.org/?github=https://github.com/Keyaan-07/Arctyx-Nano/tree/main/hardware_Arctyx-Nano)

![3d image](https://blueprint.hackclub.com/user-attachments/blobs/proxy/eyJfcmFpbHMiOnsiZGF0YSI6NTY4OCwicHVyIjoiYmxvYl9pZCJ9fQ==--b9724293643feccbebcdfbe5de3c5032cc46050b/image.png)

![PCB](https://blueprint.hackclub.com/user-attachments/blobs/proxy/eyJfcmFpbHMiOnsiZGF0YSI6NTY5MCwicHVyIjoiYmxvYl9pZCJ9fQ==--01f30c7338f6a49f24f3c3b747b485c694a6be9f/image.png)

## Features:
> Dual core ARM Cortex-M33 Processor.  
> (everything else the RP2350 has)  
> 8 channel bus connecting the FPGA and the RP2350A
> 128Mbit of Flash.  
> 6 General Purpose LEDs (4x for FPGA and 2x for RP2350A).  
> RGB LED connected to the FPGA.  
> Onboard Dual Stepdown Convertor.  
> USB Boot Button for RP2350A.

## IO Pin mapping:

| Programmer Pin | Pin on FPGA     | Pin on RP2350A |
| -------------- | --------------- | -------------- |
| CSn            | IOB_35b_SPI_SS  | GPIO17         |
| MOSI           | IOB_33b_SPI_SI  | GPIO19         |
| MISO           | IOB_32a_SPI_SO  | GPIO20         |
| SCLK           | IOB_34a_SPI_SCK | GPIO18         |

| Pin Label | Pin on FPGA | Pin label | Pin on FPGA |
| --------- | ----------- | --------- | ----------- |
| IO1       | IOT_41a     | IO11      | IOB_4a      |
| IO2       | IOT_42b     | IO12      | IOB_6a      |
| IO3       | IOT_43a     | IO13      | IOB_9b      |
| IO4       | IOT_44b     | IO14      | IOB_9a      |
| IO5       | IOT_46b     | IO15      | IOB_13b     |
| IO6       | IOT_48b     | IO16      | IOB_16a     |
| IO7       | IOT_45a     | IO17      | IOB_18a     |
| IO8       | IOT_50b     | IO18      | IOB_20a     |
| IO9       | IOT_51a     | IO19      | IOB_22a     |
| IO10      | IOT_49a     | IO20      | IOB_24a     |

| BUS Pin | Pin on FPGA | Pin on RP2350A |
| ------- | ----------- | -------------- |
| BUS0    | IOT_38b     | GPIO9          |
| BUS1    | IOT_39a     | GPIO10         |
| BUS2    | IOT_36b     | GPIO11         |
| BUS3    | IOT_37a     | GPIO12         |
| BUS4    | IOB_23b     | GPIO13         |
| BUS5    | IOB_25b_G3  | GPIO14         |
| BUS6    | IOB_29b     | GPIO15         |
| BUS7    | IOB_31b     | GPIO16         |

| LED | Pin On FPGA/MCU  |
| --- | ---------------  |
| D1  | IOB_2a           |
| D2  | IOB_0a           |
| D3  | IOB_5b           |
| D4  | IOB_3b_G6        |
| D5  | GPIO21           |
| D6  | GPIO22           |
| RGB | RGB0, RGB1, RGB2 |


## BOM

