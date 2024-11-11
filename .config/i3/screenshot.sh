path="$HOME/Pictures/Screenshots/$(date '+%Y_%m_%d_%H_%M_%S').png" && maim -s "$path" && xclip -selection clipboard -t image/png "$path"
