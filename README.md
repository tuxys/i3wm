# i3wm
*Only the most logical [1] and elegant [2] way of customizing i3wm.*

### Bash Scripts
NOTE: Download and use ``install.sh`` or do it manually. *(recommended)*
1. Create bash script folder: ``mkdir -p ~/.config/i3/bash``
2. Download script into folder: ``curl <url> -o ~/.config/i3/bash/help.sh``
3. Change script permission: ``chown <user>:<group> ~/.config/i3/bash/bash.sh``
4. Add script path and commands into your i3 config: ``~/.config/i3/config``
5. In your i3 config at ``~/.config/i3/config``
7. add script path: ``set $xsh ~/.config/i3/bash``
8. add exec variable: ``set $run exec --no-startup-id``
9. and below commands you like to use. 

**help.sh** -- i3wm bash script helper. *(first of many scripts)*
 * ``mark`` - create window mark.
  ``usage: bindsym $mod+m $run $xsh/help.sh -mark``
 * ``nark`` - remove window mark.
  ``usage: bindsym $mod+u $run $xsh/help.sh -nark``
 * ``goto`` - goto window mark.
  ``usage: bindsym $mod+g $run $xsh/help.sh -goto``
  
### Motivation
I've recently switched from XFCE to i3wm. I have used Linux and XFCE for a very long time. So I know my way around Linux and programming in general. By switching to new windows manager, I had to learn a lot of new tricks to customize it. One of the issues I had while learning i3 are finding the right way of doing things. So this is why this git repo exists :-) I hope it helps other i3wm users.

### Limitations
This i3 customizations are small and in some cases incomplete, like theme for ``rofi`` for example will be shared later. Many more scripts and configs will be shared in upcoming weeks/months.

### Bugs & Requests
You are welcome to use github issues to report bugs and request features. But I give no garantee fixing or implementing any of them :-) However, I will do my best ^_^

### Reference
* [Official i3wm Website](https://i3wm.org/)
* [Official i3wm Documentation](https://i3wm.org/docs/)
* [Official i3wm GitHub Repository](https://github.com/i3/i3)
* [i3wm on Wikipedia](https://en.wikipedia.org/wiki/I3_(window_manager))

### Thank You
Thank you to all who work on i3 tiling window manager and especialy Michael Stapelberg.

### Definition
1. *logical - characterized by or capable of clear, sound reasoning.*
2. *elegant - pleasingly graceful and stylish in appearance or manner.*
