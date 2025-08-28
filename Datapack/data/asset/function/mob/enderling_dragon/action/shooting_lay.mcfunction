#> asset:mob/enderling_dragon/action/shooting_lay
#
# shooting lay
#
# @within asset:mob/enderling_dragon/always

# add damage tag
    execute positioned ~-0.75 ~-0.75 ~-0.75 as @a[dx=0] positioned ~0.5 ~0.5 ~0.5 if entity @s[dx=0] run tag @s add hit

# particle
    particle dust{color:[0.65,0.0,0.0],scale:1} ~ ~ ~ 0.0 0.0 0.0 0 1 force

# repeat
    execute positioned ^ ^ ^0.1 if entity @s[distance=..64] run function asset:mob/enderling_dragon/action/shooting_lay

# damage
    execute as @a[tag=hit] run damage @s 4 magic

# reset
    tag @a[tag=hit] remove hit