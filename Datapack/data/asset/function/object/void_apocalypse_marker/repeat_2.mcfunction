#> asset:object/void_apocalypse_marker/repeat_2
#
# repeat
#
# @within asset:object/void_apocalypse_marker/caution

# repeat
    scoreboard players add @s repeat_time 1

    particle large_smoke ^ ^ ^4 ^ ^100000000 ^ 0.000000005 0 force @a

    execute unless score @s repeat_time matches 40.. rotated ~9 ~ run function asset:object/void_apocalypse_marker/repeat_2

# reset
    scoreboard players reset @s repeat_time