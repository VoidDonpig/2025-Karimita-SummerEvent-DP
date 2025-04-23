#> player:class/archer/ability/sharp_shot/
#
# sharp shot process
#
# @within player:class/archer/when_shot

# set data
    execute as @e[type=minecraft:arrow,distance=..2,tag=!already_sharp_shot] run function player:class/archer/ability/sharp_shot/set_data