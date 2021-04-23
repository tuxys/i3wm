# i3wm
*Only the most logical[1] and elegant[2] way of customizing i3wm*

### Bash Scripts
NOTE: Download and use ``install.sh`` or do it manually. *(recommended)*
1. Create bash script folder: ``mkdir -p ~/.config/i3/bash``
2. Download script into folder: ``curl <url> -o ~/.config/i3/bash/help.sh``
3. Change script permission: ``chown <user>:<group> ~/.config/i3/bash/bash.sh``
4. Add script path and commands into your i3 config: ``~/.config/i3/config``
5. In your i3 config at ``~/.config/i3/config``
6. add script path: ``set $xsh ~/.config/i3/bash``
7. and any below commands you like to use. 

**help.sh** -- i3wm bash script helper.
 * ``mark`` - create window mark.
  ``usage: bindsym $mod+m $run $xsh/help.sh -mark``
 * ``nark`` - remove window mark.
  ``usage: bindsym $mod+u $run $xsh/help.sh -nark``
 * ``goto`` - goto window mark.
  ``usage: bindsym $mod+g $run $xsh/help.sh -goto``
  
### Motivation
I've recently switched from XFCE to i3wm. I have used Linux and XFCE for a very long time. So I know my way around Linux and programming in general. By switching to new windows manager, I had to learn a lot of new tricks to customize it. One of the issues I had while learning i3wm is finding the right way of doing things. So this is why this git repo exists :-) I hope it helps other i3wm users.

### Limitations
Customizations of ``rofi`` and other related ``i3wm`` config files are not shared at this time. *This will be available a bit later.*

1. *logical - characterized by or capable of clear, sound reasoning.*
2. *elegant - pleasingly graceful and stylish in appearance or manner.*
