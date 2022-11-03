# ZARC Software Development Tools

## scripts
Some simple scripts used during development. To install these, use the following commands from the scripts folder:

`sudo cp * /usr/local/bin`

`sudo chmod +x /usr/local/bin/*`

## stran
This is the Linux (Python) end of my serial transfer system. For more information, see [STranGuide.pdf](tools/stran/STranGuide.pdf).

## z80.lang 
I used gedit as my source code editor. [z80.lang](tools/z80.lang) is a syntax highlighting file. To install this on Ubuntu Linux, run:

`mkdir ~/.local/share/gtksourceview-4/language-specs/`

`cp z80.lang ~/.local/share/gtksourceview-4/language-specs/`

Note that the path may be different on your system.

## Assembler and Linker
I used the assembler from [http://48k.ca/zmac.html](http://48k.ca/zmac.html) and [http://48k.ca/ld80.html](http://48k.ca/ld80.html). These must be copied to a suitable location. Make sure the zmac and ld80 scripts (from the scripts folder) are updated accordingly.

For the linker to find the include files, I added the following to ~/.bashrc:

`export ZARC_INCLUDE="<your path>/ZARC_Z80_Box/software/includes/"`
