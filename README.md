# Shell_scripts
Collection of useful (perhaps transferrable with some modification) shell scripts for bash shell.

## Scripts

### CCD - Comprehensive Change Directory
ccd is a sourced-necessary scripts which allows a user to search for a directory basename within n subdirectory levels from pwd. Usage exmaples include:

`$ ccd Desktop 3`  - searches for "Desktop" directories within 3 subdirectories. Will nto actually cd if not aliased `ccd='. ccd'` in ~/.bashrc

`$. ccd Project1`   - searches for "Project1" directories within a default of 5 subdirectories depth if no depth is passed in. Will cd as it is sourced

If only one directory is found, the shell automatically cd's into the directory if able to (currently cannot find directories with special characters or spaces in their names, and cannot use sudo).

If more than one directory matches, a list of possible choices is provided and the user is prompted to pick one to change to.
