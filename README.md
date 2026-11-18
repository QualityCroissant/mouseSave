Probably don't use this. It's just here in case somebody else finds themself in the same predicament as me and doesn't want to completely lose their mind.

Requires ydotool because xdotool is broken on wayland. Requires csh because i wanted to learn csh.

usage:

mouseSave.csh c - put the cursor in the centre of the screen and reset distances
mouseSave.csh u - move the cursor up, half the distance each time this is called
mouseSave.csh d - move the cursor down, ditto
mouseSave.csh l - move the cursor left, ditto
mouseSave.csh r - move the cursor right, ditto

Because this program is no good and very bad it looks for a file in your home directory called ".mouseSaveData". To make sure it works correctly, you should make this file and put the following info in it:
scaledScreenWidth scaledScreenHeight 0 0 0 0

0 0 0 0 is because this data is overwritten anyway.
scaledScreenWidth and scaledScreenHeight are your screen resolution but scaled. For example my screen is 1920x1080 but i have some scaling so my file had:
768 431 0 0 0 0

If you are going to use it then probably put mouseSave.csh in /usr/bin and then bind some stuff to c, u, d, l, and r.

For example I have super + alt + space bound to mouseSave.csh c, and super + alt + the arrow keys bound to mouseSave.csh u, d, l, and r.
