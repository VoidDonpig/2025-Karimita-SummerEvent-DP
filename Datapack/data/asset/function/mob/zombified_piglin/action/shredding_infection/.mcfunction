#> asset:mob/zombified_piglin/action/shredding_infection/
#
# shredding infection
#
# @within asset:mob/zombified_piglin/

# tag this
    tag @s add this

# sfx
    particle minecraft:witch ~ ~ ~ 1.5 1.5 1.5 0 32 force @a[distance=..32]
    playsound minecraft:entity.zombified_piglin.hurt hostile @a ~ ~ ~ 1 0.5

# damage entity
    execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[type=!#lib:monster,dx=4,dy=4,dz=4] run damage @s 6 mob_attack by @n[tag=this]

# reset
    tag @n[tag=this] remove this