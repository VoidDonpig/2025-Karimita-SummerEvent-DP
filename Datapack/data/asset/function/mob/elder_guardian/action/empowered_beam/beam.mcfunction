#> asset:mob/elder_guardian/action/empowered_beam/beam
#
# line beam
#
# @within asset:mob/elder_guardian/action/empowered_beam/beam

# line
    particle minecraft:explosion ~ ~ ~ 0.0 0.0 0.0 0 1 force @a
    particle minecraft:poof ~ ~ ~ 1.0 1.0 1.0 0.4 64 force @a
    particle minecraft:smoke ~ ~ ~ 1.0 1.0 1.0 0.4 64 force @a

# damage
    execute positioned ~-1.0 ~-1.0 ~-1.0 as @a[dx=1,dy=1,dz=1] run damage @s 4 minecraft:magic

# repeat
    execute positioned ^ ^ ^1.0 if entity @s[distance=..64] run function asset:mob/elder_guardian/action/empowered_beam/beam