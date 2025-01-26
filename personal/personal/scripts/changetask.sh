#!/bin/bash
echo "What is the new task?"
read NEWTASK

sed -i '' "s/{'task':.*/{'task': '$NEWTASK'}/" /Users/wumps/personal/widgets/current-task-widget/data.json 
