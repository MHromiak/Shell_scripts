# Shell_scripts
Collection of useful (perhaps transferrable with some modification) shell scripts for bash shell.

## Scripts

### CCD - Comprehensive Change Directory
ccd is a sourced-necessary scripts which allows a user to search for a directory basename within n subdirectory levels from pwd. Usage exmaples include:

`$ ccd Desktop 3`  - searches for "Desktop" directories within 3 subdirectories. Will nto actually cd if not aliased `ccd='. ccd'` in ~/.bashrc

`$. ccd Project1`   - searches for "Project1" directories within a default of 5 subdirectories depth if no depth is passed in. Will cd as it is sourced

If only one directory is found, the shell automatically cd's into the directory if able to (currently cannot find directories with special characters or spaces in their names, and cannot use sudo).

If more than one directory matches, a list of possible choices is provided and the user is prompted to pick one to change to.

<br></br>
<br></br>


### MS - Mouse Switch (Primary Buttons Swapping)
Whenever I plug my usb mouse dongle into my computer running ubuntu 20.04, my mouse settings reset to right-handed. Being left-handed, I wanted to automatically change this. I couldn't figure out visudo and the usr/udev/rules.d rules settings, however, by simply replacing $DEVICE_NAME with the name of your mouse usb (found via xinput -list), you can also easily change your primary button by running:

`$ ms`

It's just that easy. No need to source the script, either. Just add to ~/bin and go.

