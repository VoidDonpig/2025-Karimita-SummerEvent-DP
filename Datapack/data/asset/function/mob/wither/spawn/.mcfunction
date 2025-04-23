#> asset:mob/wither/spawn/
#
# wither spawning event
#
# @within asset:mob/wither/

# detect another
    execute if entity @s[tag=!confirmed_wither] if entity @e[type=wither,tag=confirmed_wither] run function asset:mob/wither/remove
    execute if entity @s[tag=!confirmed_wither] unless entity @e[type=wither,tag=confirmed_wither] run tag @s add confirmed_wither

# spawn act
    execute if entity @s[tag=confirmed_wither] unless data storage asset:mob {info:{wither_already_killed:1b}} run function asset:mob/wither/spawn/yet_killed
    execute if entity @s[tag=confirmed_wither] if data storage asset:mob {info:{wither_already_killed:1b}} run function asset:mob/wither/spawn/already_killed