#> asset:mob/ender_dragon/action/dragonic_frenzy/
#
# dragonic frenzy
#
# @within asset:mob/ender_dragon/action/phase04

# add tag
    particle minecraft:explosion ~ ~ ~ 2.625 2.625 2.625 4 128 force @a
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 8 0.5 0
    execute positioned ~-10 ~-10 ~-10 as @a[dx=19,dy=19,dz=19] run damage @s 666.6 minecraft:explosion

# summon fireball
    execute positioned ^ ^ ^-3 run function asset:mob/ender_dragon/action/dragonic_frenzy/shot
    execute positioned ^-3 ^ ^-3 run function asset:mob/ender_dragon/action/dragonic_frenzy/shot
    execute positioned ^3 ^ ^-3 run function asset:mob/ender_dragon/action/dragonic_frenzy/shot
    execute positioned ^ ^ ^3 run function asset:mob/ender_dragon/action/dragonic_frenzy/shot
    execute positioned ^-3 ^ ^3 run function asset:mob/ender_dragon/action/dragonic_frenzy/shot
    execute positioned ^3 ^ ^3 run function asset:mob/ender_dragon/action/dragonic_frenzy/shot