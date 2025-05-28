#> asset:object/void_apocalypse_marker/repeat_1
#
# repeat
#
# @within asset:object/void_apocalypse_marker/flame_sfx

# repeat
    scoreboard players add @s repeat_time 1

    particle dragon_breath ^ ^ ^4 ^ ^10000000 ^ 0.0000001 0 force @a

    execute unless score @s repeat_time matches 45.. rotated ~8 ~ run function asset:object/void_apocalypse_marker/repeat_1

# reset
    scoreboard players reset @s repeat_time