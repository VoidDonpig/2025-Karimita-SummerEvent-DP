#> asset:mob/zombified_piglin/action/curse_of_zombified_piglins/_
#
# curse of zombified_piglins
#
# @within asset:mob/zombified_piglin/

# sfx
    execute anchored eyes positioned ^ ^ ^1.5 run particle infested ~ ~ ~ 1.0 1.0 1.0 0 32 force @a[distance=..32]
    playsound entity.zombified_piglin.infect hostile @a ~ ~ ~ 1 2

# effect
    execute anchored eyes positioned ^ ^ ^1.5 run execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[type=!#lib:monster,dx=2,dy=2,dz=2] at @s run function asset:mob/zombified_piglin/action/curse_of_zombified_piglins/effect