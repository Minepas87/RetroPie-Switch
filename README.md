# RetroPie Switch

This is the repo than help you to create a Nintendo Switch style RetroPie console!

Required:
- Raspberry Pi
- Micro SD (min 8GB)
- Input method (keyboard *and* controller is preferred)
- HDMI screen (TV or PC screen)
- Second not-HDMI screen ([Official Pi Touch Display](https://www.raspberrypi.com/documentation/accessories/display.html#physical-installation) in my case but is working with all other screen)

Optional:
- 3D printed case
- USB drive for ROMS

The steps:
1. 3D print the case [Thingiverse link](https://www.thingiverse.com/thing:1585924) (Optional)
2. Flash the SD card with [RetroPie](https://retropie.org.uk/docs/First-Installation/)
3. Install and enable [DualShock4 controller driver](https://retropie.org.uk/docs/PS4-Controller/) (Optional)
4. Enable [running ROMS from USB](https://retropie.org.uk/docs/Running-ROMs-from-a-USB-drive/) (Optional)
5. Use this repo for enable screen switch

## How to use this repo

First type the command `cd` to make sure we are in the right folder.

Now clone this repo with the command
``` 
git clone https://github.com/Minepas87/RetroPie-Switch.git
```

When the process was complete type the command 
```
cp /Retropie-Switch/rc.local /etc/rc.local
```
for change the default rc.local file with the new one.

And done! Your system use HDMI screen if is available, otherwise will use secondary LCD!

**Note**
In my rc.local file is included the boot script for ds4drv driver. By default is commented.
If you want use it, open the file in terminal with `sudo nano /RetroPie-Switch/rc.local` and uncomment the line after `#SET Dualshock 4 input`.
Than repeat the last command step. 