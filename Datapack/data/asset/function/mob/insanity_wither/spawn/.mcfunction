#> asset:mob/insanity_wither/spawn/
#
# insanity_wither spawning event
#
# @within asset:mob/insanity_wither/

# detect another
    execute if entity @s[tag=!confirmed_insanity_wither] if entity @e[type=wither,tag=confirmed_insanity_wither] run function asset:mob/insanity_wither/remove
    execute if entity @s[tag=!confirmed_insanity_wither] unless entity @e[type=wither,tag=confirmed_insanity_wither] run tag @s add confirmed_insanity_wither

# spawn act
    execute if entity @s[tag=confirmed_insanity_wither] unless data storage asset:mob {info:{insanity_wither_already_killed:1b}} run function asset:mob/insanity_wither/spawn/yet_killed
    execute if entity @s[tag=confirmed_insanity_wither] if data storage asset:mob {info:{insanity_wither_already_killed:1b}} run function asset:mob/insanity_wither/spawn/already_killed