# Arctyx Nano

Arctyx Nano is an FPGA development board consisting of the ICE40UP5K FPGA from [Lattice](https://latticesemi.com) Semiconductor. Arctyx Nano also consists of the RP2350A MCU from [Raspberry Pi](https://raspberrypi.com).  

Check out the board on [KiCanvas](https://kicanvas.org/?github=https://github.com/Keyaan-07/Arctyx-Nano/tree/main/hardware_Arctyx-Nano)

![3d image](https://blueprint.hackclub.com/user-attachments/blobs/proxy/eyJfcmFpbHMiOnsiZGF0YSI6NTY4OCwicHVyIjoiYmxvYl9pZCJ9fQ==--b9724293643feccbebcdfbe5de3c5032cc46050b/image.png)

![PCB](https://blueprint.hackclub.com/user-attachments/blobs/proxy/eyJfcmFpbHMiOnsiZGF0YSI6NTY5MCwicHVyIjoiYmxvYl9pZCJ9fQ==--01f30c7338f6a49f24f3c3b747b485c694a6be9f/image.png)

### Features:
> Dual core ARM Cortex-M33 Processor.  
> (everything else the RP2350 has)  
> 8 channel bus connecting the FPGA and the RP2350A
> 128Mbit of Flash.  
> 6 General Purpose LEDs (4x for FPGA and 2x for RP2350A).  
> RGB LED connected to the FPGA.  
> Onboard Dual Stepdown Convertor.  
> USB Boot Button for RP2350A.

### IO Pin mapping:

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