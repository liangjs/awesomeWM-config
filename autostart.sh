#!/bin/bash

function run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run numlockx on
# run dunst
run nm-applet
run ibus-daemon -drx
run volumeicon
run light-locker --no-lock-on-lid --no-late-locking
run xautolock -time 25 -locker "light-locker-command -l"
run picom -b
