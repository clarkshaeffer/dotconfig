#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "need int fps arg"
else
    # replace 'fps = <digit>,' with 'fps = $1' in animations
    sed -i "s/\(fps = \)\(.*\)/\1$1,/" $(grep -rl "fps = " /root/.local/share/nvim/lazy/cellular-automaton.nvim/lua/cellular-automaton/animations)
fi

