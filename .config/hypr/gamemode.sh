#!/usr/bin/env sh
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | grep -Po '(?<=int: ).*')
if [ "$HYPRGAMEMODE" = 1 ] ; then
    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:drop_shadow 0;\
        keyword decoration:blur:enabled 0;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword general:border_size 0;\
        keyword decoration:blur false;\
        keyword decoration:drop_shadow false;\
        keyword decoration:rounding 0"
    exit
fi
hyprctl reload

