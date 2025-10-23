#> asset:object/wither_skeleton_skull/
#
# tick
#
# @within asset:

# sfx
    particle crit ~ ~ ~ 0.0 0.0 0.0 0.2 1 normal

# hit
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:all,type=!#lib:monster,dx=0] run tag @s add hit

# tick
    tp @s ^ ^ ^0.8

# add tag on this when hit block
    execute unless block ~ ~ ~ #lib:not_solid run tag @s add hit

# crash
    execute if entity @s[tag=hit] run function asset:object/wither_skeleton_skull/crash