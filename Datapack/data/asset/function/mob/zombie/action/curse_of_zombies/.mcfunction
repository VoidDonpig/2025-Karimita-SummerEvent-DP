#> asset:mob/zombie/action/curse_of_zombies/_
#
# curse of zombies
#
# @within asset:mob/zombie/

# sfx
    execute anchored eyes positioned ^ ^ ^1.5 run particle infested ~ ~ ~ 1.0 1.0 1.0 0 32 normal
    playsound entity.zombie.infect hostile @a[distance=..16] ~ ~ ~ 1 2

# effect
    execute anchored eyes positioned ^ ^ ^1.5 run execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[type=!#lib:monster,dx=2,dy=2,dz=2] at @s run function asset:mob/zombie/action/curse_of_zombies/effect