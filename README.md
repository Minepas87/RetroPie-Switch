# RetroPie Switch

This is the repo that will help you create a Nintendo Switch-style RetroPie console!

Requirements:
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

**Read this entire document!!!**

### Installer

1. First type the command `cd` to make sure you are in the right folder.

2. Now clone this repo with the command
```
git clone https://github.com/Minepas87/RetroPie-Switch.git
```

3. When the process was complete type the command 
```
bash /RetroPie-Switch/install.sh
```

When it finished the installation is complete! Have fun with RetroPie Switch!

### Manual installation

1. First type the command `cd` to make sure you are in the right folder.

2. Now clone this repo with the command
``` 
git clone https://github.com/Minepas87/RetroPie-Switch.git
```

3. When the process was complete type the command 
```
cp /Retropie-Switch/rc.local /etc/rc.local
```
for replace the default rc.local file with the new one.

4. Now go to the Retropie-Switch folder with
```
cd Retropie-Switch/
```
and use the dos2unix package for convert the init.sh script:
```
dos2unix init.sh
```

*If you haven't dos2unix, you can install it with the command `apt install dos2unix`.*

And done! Now your system use HDMI screen if is available, otherwise will use secondary LCD!

**Note!!!**

In my rc.local file is included the boot script for ds4drv driver. By default is commented.
If you want use it, open the file in terminal with `sudo nano /RetroPie-Switch/rc.local` and uncomment the line after `#SET Dualshock 4 input`.
Than repeat command 3. 