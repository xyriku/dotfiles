#!/bin/bash
echo Paste new quote below to add:
read QUOTE

echo $QUOTE >> ~/personal/textfiles/quotes.txt
echo >> ~/personal/textfiles/quotes.txt
