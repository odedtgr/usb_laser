# usb_laser
A USB powered and controlled laser diode. The USB interfcae (HID) is implemented using a Microchip PIC 18F2550 microcontroller.


![IMG_1880](https://user-images.githubusercontent.com/22654190/182002676-d2c6d1a1-d9a4-45ae-b38a-53bbb1d81dcd.jpg)

## Bootloader


## Mcrocontroller firmware
The microcontroller firmware is based on Microchip Libraries for Applications v2018-11-26. 
In order to rebuild the project:
1. Install MPLAB-X and XC8 compiler
2. Install Microchip Libraries for Applications v2018-11-26.
3. place project folder under C:\microchip\mla\v2018_11_26\apps\usb\device\hid_custom\firmware\usb_laser.X
4. The rebuild output .hex file can be found in usb_laser.X\dist\PICDEM_FSUSB\production 

## Host software


## Referances
