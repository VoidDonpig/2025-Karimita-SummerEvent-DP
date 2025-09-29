#> asset:item/celestial_blade/teleport
#
# teleport
#
# @within asset:item/celestial_blade/do

# tp
    execute if block ^ ^ ^0.1 #lib:not_solid align xyz run tp ~0.5 ~ ~0.5
    scoreboard players add @s repeat_time 1
    execute positioned ^ ^ ^0.1 if block ~ ~ ~ #lib:not_solid if block ~ ~1 ~ #lib:not_solid if block ^0.1 ^ ^ #lib:not_solid if block ^-0.1 ^ ^ #lib:not_solid if entity @s[scores={repeat_time=..99}] run function asset:item/celestial_blade/teleport
    execute at @s run function lib:player_motion/reset
    scoreboard players reset @s repeat_time