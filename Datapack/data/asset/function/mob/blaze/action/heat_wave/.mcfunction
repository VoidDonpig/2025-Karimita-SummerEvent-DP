#> asset:mob/blaze/action/heat_wave/
#
# deal damage
#
# @within asset:mob/blaze/

# damage
    tag @s add attacker
    execute positioned ~-3.5 ~-3.5 ~-3.5 as @e[type=#lib:all,type=!#lib:monster,dx=6,dy=6,dz=6] run damage @s 16.0 minecraft:fireball by @n[tag=attacker]
    tag @s remove attacker

# sfx
    particle minecraft:flame ~ ~0.5 ~ 2 2 2 0 200 normal
    particle minecraft:ash ~ ~0.5 ~ 2 2 2 1 400 normal
    playsound minecraft:entity.blaze.shoot hostile @a[distance=..16] ~ ~ ~ 2 0.7 0