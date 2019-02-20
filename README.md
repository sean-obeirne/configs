# configs
Configuration files I use for my linux machines

I can run "sh getfiles.sh" to pull my config files from their locations to this repo

So far this repo contains my config files for:
i3 (both laptop and desktop versions)
polybar (both laptop and desktop versions)
vimrc

In general, laptop config files attempt to use less battery and are more utility-focused, not so much on looks. Notable changes:
 - no compton is used for transparency or blurring effect
 - gaps are set to 0 for i3

polybar laptop config files also include modules such as backlight and battery, which are pointless on desktop.
