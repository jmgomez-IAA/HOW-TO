I just tried HotKey 1.1 and apparently the "Disable = yes"
tells HotKey to just act on the key once, that is, disable 
the watching for the "hot" key after it is detected one time.
According to the German Readme file, all the hot keys are disabled.

The hotkey program itself continues running, even though it
no longer has any "hot" keys to look for.

I do not see a way to have the HotKey program kill itself,
but a soft-reset (reboot) does remove the process.
Manually one can use the "Hot Key" icon on the taskbar to
test for button codes, and to kill the program.

Apparently (yes, my translation and understanding might be a but rough):

Command = \folder\program.exe -> starts program in specified folder
Command = \ -> opens the Desktop
Disable = yes -> when this hotkey is detected, all Hotkeys are deactivated
NewIni = \Program Files\Hotkey\specialHotkeys.ini -> the Hotkeys 
from the specified ini file are used (the old ini ignored)

----- German translation at http://translation2.paralink.com/ -----
(with a little cleaning up by me)

With this program one can assign to keys of the PDA/PNA's 
a program which is begun with a longer low-spirited hold of the key.
The configuration is carried out from an Ini file.

If Hotkeys were loaded, the program disappears but is shown 
as a small Icon in the Systray (which can be clicked to get 
the HotKeys program to appear on the screen).
A Red Icon means that some keys are "hot".

After activating the HotKey program window (using the small 
icon in the Taskbar, the HotKey program window shows the numeric
KeyCodes of the keys that you press, to be able to know what
numeric codes to use for the keys in an Ini file. 

On the right of the HotKey window there are three buttons:
X-box = Close the HotKey application
D = temporarily deactivate the Hot keys (before testing for key codes)
E = re-activate the Hot Keys after testing key codes
the funny sign at the bottom right = "minimize" the window to the Systray.

If a program is begun by a second Hotkey, before 
the first one was finished, the program asks whether the first 
should be terminated. 
(not quite sure what the following means)
"as a rule should be answered here with and be changed 
by hand to the first authority of the quite running program."

Configuration:

The file "HotKey.ini" (or other ini files) must be stored 
in Unicode-Format (normal text file, with the ".ini" extension) 
and stored in the same folder as HotKey.exe program.
Examples of all possible settings are shown below with explanation:

SETTINGS
ElapseTime = 500 -> how long a key must be held (milliseconds)
Check interval = 50 -> the interval (in milliseconds) after pressing 
a key at which it is checked again to see if the key was released 
early - corresponds to the minimum delay of a keystroke. The value 
should not be too high, 20 - 50 is quite good, then one does not 
notice the delay.

{SNIP - The examples]

Changes in version 1.1:
Another Ini can be loaded with the attribute "NewIni".
The old Hotkeys cease to function, only the Hotkeys of the 
new Ini become active.
An example of the new attribute was shown above.
