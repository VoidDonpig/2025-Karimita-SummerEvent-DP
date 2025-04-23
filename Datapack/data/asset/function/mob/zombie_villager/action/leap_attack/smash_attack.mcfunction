#> asset:mob/zombie_villager/action/leap_attack/finish
#
# smash attack
#
# @within asset:mob/zombie_villager/action/leap_attack/finish

# tag entity
    tag @s add this

# smash attack
    particle block{block_state:"minecraft:dirt"} ~ ~ ~ 1.5 1.5 1.5 0 128 force @a[distance=..32]
    playsound item.mace.smash_ground_heavy hostile @a ~ ~ ~ 1 2 0

# damage
    execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[type=!#lib:monster,dx=4,dy=4,dz=4] run damage @s 6 mob_attack by @n[tag=this]

# remove tag
    tag @s remove this