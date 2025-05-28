#> asset:object/void_apocalypse_marker/repeat_3
#
# repeat
#
# @within asset:object/void_apocalypse_marker/

# repeat
    scoreboard players add @s repeat_time 1

    tag @a[distance=..4] add victim

    execute unless score @s repeat_time matches 256.. positioned ~ ~1 ~ run function asset:object/void_apocalypse_marker/repeat_3

# reset
    scoreboard players reset @s repeat_time