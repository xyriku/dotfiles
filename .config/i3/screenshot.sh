fileName=Screenshot_$(date '+%d_%m_%Y_%H_%M_%S.png');
maim -s $fileName ; cat $fileName | xclip -selection clipboard -t image/png
