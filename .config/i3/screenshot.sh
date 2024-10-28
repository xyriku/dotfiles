fileName=Screenshot_$(date '+%d_%m_%Y_%H_%M_%S.png');
maim --select -o ~/Pictures/Screenshots/$fileName | xclip -selection clipboard -t image/png 
