#> asset:object/void_apocalypse_marker/repeat_3
#
# repeat
#
# @within asset:object/void_apocalypse_marker/

# repeat
    scoreboard players add @s repeat_time 1

    execute as @e[type=#lib:all,distance=..4] unless data entity @s {data:{mob:{boss:1b}}} run tag @s add victim

    execute unless score @s repeat_time matches 256.. positioned ~ ~1 ~ run function asset:object/void_apocalypse_marker/repeat_3

# reset
    scoreboard players reset @s repeat_time