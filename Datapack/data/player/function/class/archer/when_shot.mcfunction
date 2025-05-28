#> player:class/archer/when_shot
#
# archer ability trigger
#
# @within player:trigger/shot_arrow/

# multiple shot
    execute if score @s charging_bow matches 20.. anchored eyes run function player:class/archer/ability/multiple_shot/

# sharp shot
    execute anchored eyes run function player:class/archer/ability/sharp_shot/

# reduce multiple shot arrow damage
    execute if entity @e[type=minecraft:arrow,tag=not_data_set] as @e[type=minecraft:arrow,tag=not_data_set] run function player:class/archer/ability/multiple_shot/reduce_damage/

# tag arrow
    execute if entity @e[type=minecraft:arrow,tag=already_sharp_shot,tag=!archer_arrow_all_init] as @e[type=minecraft:arrow,tag=already_sharp_shot,tag=!archer_arrow_all_init] run tag @s add archer_arrow_all_init

# reset
    tag @s remove left_shot
    tag @s remove right_shot