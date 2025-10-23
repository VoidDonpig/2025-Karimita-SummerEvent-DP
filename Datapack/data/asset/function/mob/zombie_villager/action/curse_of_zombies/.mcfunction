#> asset:mob/zombie_villager/action/curse_of_zombie_villagers/_
#
# curse of zombie_villagers
#
# @within asset:mob/zombie_villager/

# sfx
    execute anchored eyes positioned ^ ^ ^1.5 run particle infested ~ ~ ~ 1.0 1.0 1.0 0 32 normal
    playsound entity.zombie_villager.infect hostile @a[distance=..16] ~ ~ ~ 1 2

# effect
    execute anchored eyes positioned ^ ^ ^1.5 run execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[type=!#lib:monster,dx=2,dy=2,dz=2] at @s run function asset:mob/zombie_villager/action/curse_of_zombie_villagers/effect