# usb_laser
A USB powered and controlled laser diode. The USB interfcae (HID) is implemented using a Microchip PIC 18F2550 microcontroller.
The Laser diode used is KY-008 650nm Laser


![IMG_1880](https://user-images.githubusercontent.com/22654190/182002676-d2c6d1a1-d9a4-45ae-b38a-53bbb1d81dcd.jpg)

## Mcrocontroller firmware
The microcontroller firmware is based on Microchip Libraries for Applications v2018-11-26. 

In order to rebuild the project:
1. Install MPLAB-X and XC8 compiler
2. The rebuild output .hex file can be found in usb_laser.X\dist\PICDEM_FSUSB\production 

## Board schematic
The board was referanced from https://www.waitingforfriday.com/?p=415#Self-Powered_USB_Devices

![image](https://user-images.githubusercontent.com/22654190/182003204-159ad5cf-de81-443c-8107-c73c41814a5e.png)


## Bootloader
Bootlader is provided by MikroElectronika

![image](https://user-images.githubusercontent.com/22654190/182003121-57ccac03-e5a2-4df0-92e1-d9b438b4d895.png)

To upload a new firmware to the microcitroller:
1. Run "mikroBootloader USB HID.exe"
2. Disconnect --> reconnect the USB to the Laser board
3. Within 3 seconds, press the "Connect"
4. Browse for the .hex file and upload it. 


## Host application
The host application is based on Microchip Libraries for Applications v2018-11-26, \apps\usb\device\hid_custom\utilities\plug_and_play_example\windows\src

In order to rebuild:
1. Install Microsoft Visual Studio.
2. open the "HID PnP Demo.vcxproj" proect file. do not allow Visual Studio to upgrade the project. 


## Referances
