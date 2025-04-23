#> asset:mob/stray/action/curse_of_deossification/
#
# curse of deossification
#
# @within asset:mob/stray/

# sfx
    execute anchored eyes positioned ^ ^ ^1.5 run particle infested ~ ~ ~ 1.0 1.0 1.0 0 32 force @a[distance=..32]
    playsound entity.stray.death hostile @a ~ ~ ~ 1 0.5

# effect
    execute anchored eyes positioned ^ ^ ^1.5 run execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[type=!#lib:monster,dx=2,dy=2,dz=2] at @s run function asset:mob/stray/action/curse_of_deossification/effect