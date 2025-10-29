# Arctyx Nano

Arctyx Nano is an FPGA development board consisting of the ICE40UP5K FPGA from [Lattice](https://latticesemi.com) Semiconductor. Arctyx Nano also consists of the RP2350A MCU from [Raspberry Pi](https://raspberrypi.com).  

Check out the board on [KiCanvas](https://kicanvas.org/?github=https://github.com/Keyaan-07/Arctyx-Nano/tree/main/hardware_Arctyx-Nano)

![3d image](https://blueprint.hackclub.com/user-attachments/blobs/proxy/eyJfcmFpbHMiOnsiZGF0YSI6NTY4OCwicHVyIjoiYmxvYl9pZCJ9fQ==--b9724293643feccbebcdfbe5de3c5032cc46050b/image.png)

![PCB](https://blueprint.hackclub.com/user-attachments/blobs/proxy/eyJfcmFpbHMiOnsiZGF0YSI6NTY5MCwicHVyIjoiYmxvYl9pZCJ9fQ==--01f30c7338f6a49f24f3c3b747b485c694a6be9f/image.png)

## Features:
> Dual core ARM Cortex-M33 Processor (also everything else the RP2350 has)  
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
| Item              | Cost  | Note               |
| ----------------- | ----- | ------------------ |
| PCB               | 17.8  | 4-Layers           |
| PCBA              | 60.87 | Kinda Dense board  |
| Shipping from JLC | 10.24 |                    |
| coupon Discount   | \-9   | SMT monthly coupon |
| Total             | 79.91 | USD                |

### PCB Components Breakdown
| Designator                                          | Designation                 | Footprint                                | Quantity | Amount | JLCPCB Lib type | JLCPCB Part Number |
| --------------------------------------------------- | --------------------------- | ---------------------------------------- | -------- | ------ | --------------- | ------------------ |
| C1,C2                                               | 15p                         | 0402                                     | 4        | 0.004  | Basic           | C1548              |
| C10,C11,C12,C13,C14,C15,C17,C18,C19,C21,C6,C7,C8,C9 | 100n                        | 0402                                     | 28       | 0.0336 | Basic           | C1525              |
| C16,C23,C3,C4,C5                                    | 4.7u                        | 0402                                     | 10       | 0.049  | Basic           | C23733             |
| C20,C22                                             | 22u                         | 0603                                     | 4        | 0.0348 | Basic           | C59461             |
| C24                                                 | 10u                         | 0603                                     | 2        | 0.0112 | Basic           | C19702             |
| D1,D2,D3,D4,D5,D6                                   | LED                         | 0402                                     | 24       | 0.3528 | Extended        | C434448            |
| L1,L2,L3                                            | AOTA-B201610S3R3-101-T      | IND-SMD_L2.0-W1.6_AOTA-B201610S3R3-101-T | 6        | 1.0782 | Extended        | C42411119          |
| R1,R2                                               | 5.1k                        | 0402                                     | 4        | 0.002  | Basic           | C25905             |
| R3,R4                                               | 27                          | 0402                                     | 20       | 0.012  | Extended        | C138021            |
| R5,R7                                               | 1k                          | 0402                                     | 4        | 0.0024 | Basic           | C11702             |
| R6                                                  | 33                          | 0402                                     | 2        | 0.0012 | Basic           | C25105             |
| R10,R9                                              | 51k                         | 0402                                     | 4        | 0.0024 | Basic           | C25794             |
| R11                                                 | 100k                        | 0402                                     | 2        | 0.0012 | Basic           | C25741             |
| R12                                                 | 22k                         | 0402                                     | 2        | 0.0012 | Basic           | C25768             |
| R13                                                 | 120                         | 0402                                     | 2        | 0.0012 | Basic           | C25079             |
| R14,R15,R16,R17,R18,R19,R20,R21                     | 100                         | 0402                                     | 16       | 0.008  | Basic           | C25076             |
| SW1                                                 | SW_Push                     | SW-SMD_L3.9-W3.0-P4.45                   | 2        | 0.0846 | Basic           | C720477            |
| U1                                                  | ICE40UP5K-SG48ITR           | QFN-48-1EP_7x7mm_P0.5mm_EP5.6x5.6mm      | 2        | 11.352 | Extended        | C2678152           |
| U2                                                  | RP2350A-QFN60               | RP2350A_QFN-60_EP_7.75x7.75_Pitch0.4mm   | 2        | 3.195  | Extended        | C42411118          |
| U3                                                  | W25Q128JVP                  | WSON-8-1EP_6x5mm_P1.27mm_EP3.4x4.3mm     | 2        | 2.472  | Extended        | C2441427           |
| U4                                                  | RT8075ZQW                   | WDFN-10_L3.0-W3.0-P0.50-BL-EP            | 2        | 0.864  | Extended        | C250416            |
| U5                                                  | TJ-S1608SW6TDSLCCYRGB-A5    | LED-ARRAY-SMD_4P-L1.6-W0.8-BL-FD         | 6        | 0.4314 | Extended        | C5356078           |
| Y1                                                  | Crystal_GND24               | Crystal_SMD_3225-4Pin_3.2x2.5mm          | 5        | 1.716  | Extended        | C20625731          |
| J1                                                  | USB_C_Receptacle_USB2.0_16P | USB_C_Receptacle_XKB_U262-16XN-4BVC11    | 0        | 0      | Do Not Place    | Do Not Place       |

<img width="1127" height="392" alt="image" src="https://github.com/user-attachments/assets/166dfbc9-49b2-4d0a-aab4-dd28671af9c3" />


## License and Contribution

[MIT License](/LICENSE)

Open to contributions in both software and hardware!
