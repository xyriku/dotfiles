#!/usr/bin/env bash
/home/wumps/.local/bin/cliphist list | fuzzel --match-mode fzf --dmenu | cliphist decode | wl-copy
