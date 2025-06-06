niri msg action screenshot-screen && sleep 1.5
wait
latestfile=$(exa -snew /home/wumps/Pictures/Screenshots | tail -n1) 
wait
satty -f /home/wumps/Pictures/Screenshots/$latestfile && sleep 1 |
wait
wl-paste > /tmp/yep.png && sleep 1 |
curl -H "Authorization: Bearer netq19me1Cc58mXaxGvl7tOm7eR5USZj" \
-H "Content-Type: multipart/form-data" \
-F file=@/tmp/yep.png \
https://wumps.ssup.moe/upload |
jq -r .url |
wl-copy && rm /tmp/yep.png
