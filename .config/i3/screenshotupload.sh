#!/bin/bash
auth="netq19me1Cc58mXaxGvl7tOm7eR5USZj"
url="https://wumps.ssup.moe/upload"

temp_file="/tmp/screenshot.png"
flameshot gui -r > $temp_file

if [[ $(file --mime-type -b $temp_file) != "image/png" ]]; then
        rm $temp_file
  notify-send "Screenshot aborted" -a "Flameshot" && exit 1
fi

curl -X POST -F "file=@"$temp_file -H "Authorization: Bearer "$auth -v "$url" 2>/dev/null | jq -r ".url" | xclip -sel c
rm $temp_file
