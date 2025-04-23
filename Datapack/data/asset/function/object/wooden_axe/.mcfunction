#> asset:object/wooden_axe/
#
# tick
#
# @within asset:

# this
    tag @s add this

# sfx
    particle crit ~ ~ ~ 0.0 0.0 0.0 0.2 1 force @a[distance=..32]

# damage
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#lib:monster,dx=0] run damage @s 7 minecraft:mob_attack by @n[type=item_display,tag=this]

# tick
    tp @s ^ ^ ^0.8

# kill this when hit block
    execute unless block ~ ~ ~ #lib:not_solid run kill @s

# reset
    tag @s remove this