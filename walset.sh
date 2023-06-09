#!/usr/bin/bash
waldir=~/wallpapers/
wal=$(ls -c $waldir/*.{png,jpeg,jpg} 2> /dev/null | nsxiv -tobi | head -n 1)
[ -f $wal ] && ln -sf $wal ~/.wal && setbg.sh && touch $wal
