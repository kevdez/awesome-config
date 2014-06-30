#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xcompmgr &

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice


# exec ck-launch-session bash -c "udiskie & awesome"

DEFAULT_SESSION=ck-launch-session bash -c "udiskie & awesome"

case $1 in
cinnamon)
	exec gnome-session-cinnamon
	;;
awesome)
	exec ck-launch-session bash -c "udiskie & awesome"
	;;
*)
	exec $DEFAULT_SESSION
	;;
esac
