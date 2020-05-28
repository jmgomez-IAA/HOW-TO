---------------------------------------------------------------
Microsoft Windows Media Player for Handheld PC Readme File 

June 2000
---------------------------------------------------------------

This document provides late-breaking or other information that supplements the documentation for Microsoft Windows Media Player for Handheld PC.

For additional information on Windows Media Player and skins, see the Windows Media page of the Microsoft Web site at http://www.microsoft.com/windows/windowsmedia/. 


=================================
How to use this document
=================================

To print this document, open it in Pocket Word and then select Print from the File menu.

========
Contents
========

1.0 Minimum System Requirements
	1.1 Desktop Computer
	1.2 Portable Device
2.0 Known Issues with Windows Media Player for Handheld PC
	2.1 General 
	2.2 System specific
	2.3 Compact Flash Memory Cards
	2.4 Packaged Content
	2.5 Vadem Clio Issues
3.0 Legal Notice


===============================
1.0 Minimum System Requirements
===============================
--------------------
1.1 Desktop Computer
--------------------

Software: Windows Media Player 7, Microsoft(R) ActiveSync(R) 3.0 or later.

-------------------
1.2 Portable Device
-------------------

Operating System: Microsoft(R) Windows(R) CE 2.11 for Handheld PC Pro 3.0

Supported processors: MIPS 41xx family, MIPS 3900 family, SH3, and Strong-ARM 11xx family.

Processor:
	Required - 90 MHz
	Recommended - 166 MHz 
RAM:
	Required - 1.6 MB
	Recommended - 3.0 MB 

Supported display resolutions: 640x240, 640x480, 800x480, and 800x600

Required sampling frequencies:  11.025 KHz, 16 KHz, 22.050 KHz, 32 KHz, and 44.1 KHz


==========================================================
2.0 Known Issues with Windows Media Player for Handheld PC
==========================================================
------------
2.1 General
------------
-----------------------------------
2.11 Changing the auto hide setting
-----------------------------------

If you change the auto hide setting of the taskbar when Windows Media Player is in the foreground, you may experience redraw problems that cause certain parts of Windows Media Player to disappear incorrectly. If this happens, close and re-launch the player.   To avoid this problem, do not adjust auto hide settings while the player is in the foreground.

--------------------------------
2.12 Changing the desktop scheme
--------------------------------

Depending on the device, some Display Appearance schemes may cause Windows Media Player to display in a undesirable manner. For optimal viewing, use the 'Windows Standard' scheme or another low contrast scheme. 

-------------------------
2.13 Muting audio devices
-------------------------

If you mute the audio for Windows Media Player, all other audio applications (including system sounds and alarms) on your Handheld PC are muted as well. To restore your volume setting, use the volume or mute controls on the main player screen. Alternatively, you can access the volume control from Control Panel (Volume and Sounds).

-----------------------
2.14 Creating playlists
-----------------------

If you create an empty playlist (that is, without tracks), and then open a different playlist, you will not be able to access or edit the empty playlist. You can, however, delete the empty playlist.

----------------------------
2.15 The My Documents folder
----------------------------

When you copy music to a portable device (or to a storage card in a portable device) for the first time using Windows Media Player 7, a folder called My Documents is created. My Documents contains your playlists and music. You might already have an existing My Documents folder on your desktop, which might be localized. The new My Documents folder does not overwrite the existing My Documents folder and should not be altered in any way.

-------------------
2.2 System Specific
-------------------
------------------------
2.21 Removing skin files
------------------------

While the Windows Media Player is running, you may not be able to remove a skin file (.skn) located on a storage card.  If this happens, close the player, and then try again.

---------------------------
2.22 Using the reset button
---------------------------

If you repeatedly tap your device's reset button while Windows Media Player is running, the displayed skin file may become corrupted.

---------------------------------
2.23 Displaying DRM license files
---------------------------------

Some DRM license files with "hidden" attributes may display in your device's File Explorer even when the Do Not Show Hidden files and folders option is selected.

-------------------------
2.24 Using sampling rates
-------------------------

If a device does not accurately support standard sampling rates (See Minimum System requirements), playback may sound higher or lower in pitch than expected. For more information on sampling rates, consult your device's user manual.

------------------
2.3 Storage cards 
------------------
---------------------------
2.31 Removing storage cards
---------------------------

If you remove a storage card (i.e., Compact Flash, PCMCIA Flash, or hard drive) after pausing an audio file, the player may change to an inactive state. If this occurs, use the Skip Forward button or the View Playlist dialog box to locate the next available track of the current playlist.  

--------------------------------------------
2.32 Installing the player on a storage card
--------------------------------------------

If you choose to install Windows Media Player on a storage card and accept the default directory name, this directory is named Microsoft Windows Media Player instead of Windows Media Player.  (Note: It is recommended that the Windows Media Player always be installed to the default application install location.)

-----------------------------------------------
2.33 Un-installing the player on a storage card
-----------------------------------------------

If you choose to install Windows Media Player on a storage card, there are additional steps required to cleanly remove the application from the system.  First (prior to performing any un-install), re-install the player and install the program using the default application install location.  Next, use Add/Remove programs from Microsoft ActiveSync to un-install Windows Media Player.  Finally, delete the Microsoft Windows Media Player folder from the Storage Card.  (Note: It is recommended that the Windows Media Player always be installed to the default application install location. For more information on using Add/Remove Programs, please refer to the Microsoft ActiveSync documentation.)

-----------------------------------------
2.34 Unexpected Renaming of Storage Cards 
-----------------------------------------

While the device is in suspend mode, or after WMP install has updated the system ATADisk.dll, the naming convention of the currently available storage cards may change (i.e., a card named "Storage Card" may be renamed "Storage Card1").  If this happens, Windows Media Player may have temporary difficulty locating skin files, music tracks, or playlists that are located on the renamed cards.  To fix this, close and re-launch WMP, and use Skin Chooser, All My Music, or All Playlists functions to re-locate these files.  (Note: If the problem is related to another application or to a favorite/shortcut, it may be necessary to reinstall the application or to edit the favorite/shortcut using Microsoft ActiveSync).

--------------------
2.4 Packaged Content
--------------------

Windows Media Player for Handheld PC supports packaged content, which includes content files that are protected with Secure Digital Music Initiative (SDMI) and Digital Rights Management (DRM) compatible protection formats. The specific user's rights to view and transfer packaged content are controlled through a license for each piece of packaged content. In the course of playing back or transferring packaged content to your portable device, you may be notified of errors that occurred as a result of improper license permission. The most common types of errors are:

--The license does not allow copying or transferring of the file.
--The license is expired or missing. 

In either case, you can rectify the problem by re-obtaining the appropriate license from the content provider. The error message will indicate the source of the problem and the recommended remedy.

---------------------
2.5 Vadem Clio Issues
---------------------

When the Clio screen is collapsed into tablet mode, the CalliGrapher.exe program appears by default. If Clio is put into tablet mode while Windows Media Player is running, the player will stop responding. To solve this issue, click Control Panel, click Tablet Mode AutoStart, and then remove CalliGrapher.exe. You can restore the default setting later through Control Panel.

================
3.0 Legal Notice
================

Information in this document, including URL and other Internet Web site references, is subject to change without notice and is provided for informational purposes only. The entire risk of the use or results of the use of this document remains with the user, and Microsoft Corporation makes no warranties, either express or implied. The example companies, organizations, products, people and events depicted herein are fictitious. No association with any real company, organization, product, person or event is intended or should be inferred.  Complying with all applicable copyright laws is the responsibility of the user. Without limiting the rights under copyright, no part of this document may be reproduced, stored in or introduced into a retrieval system, or transmitted in any form or by any means (electronic, mechanical, photocopying, recording, or otherwise), or for any purpose, without the express written permission of Microsoft Corporation. 

Microsoft may have patents, patent applications, trademarks, copyrights, or other intellectual property rights covering subject matter in this document. Except as expressly provided in any written license agreement from Microsoft, the furnishing of this document does not give you any license to these patents, trademarks, copyrights, or other intellectual property.

(c)2000 Microsoft Corporation. All rights reserved.

Microsoft, Windows, Windows Media, and ActiveSync are either registered trademarks or trademarks of Microsoft Corporation in the U.S.A. and/or other countries.

The names of actual companies and products mentioned herein may be the trademarks of their respective owners.