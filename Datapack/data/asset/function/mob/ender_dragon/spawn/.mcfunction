#> asset:mob/ender_dragon/spawn/
#
# ender_dragon spawning event
#
# @within asset:mob/ender_dragon/always

# detect another
    execute if entity @s[tag=!confirmed_ender_dragon] if entity @e[type=ender_dragon,tag=confirmed_ender_dragon] run function lib:vanish/
    execute if entity @s[tag=!confirmed_ender_dragon] unless entity @e[type=ender_dragon,tag=confirmed_ender_dragon] run tag @s add confirmed_ender_dragon

# spawn act
    execute if entity @s[tag=confirmed_ender_dragon] unless data storage asset:mob {info:{ender_dragon_already_killed:1b}} run function asset:mob/ender_dragon/spawn/yet_killed
    execute if entity @s[tag=confirmed_ender_dragon] if data storage asset:mob {info:{ender_dragon_already_killed:1b}} run function asset:mob/ender_dragon/spawn/already_killed