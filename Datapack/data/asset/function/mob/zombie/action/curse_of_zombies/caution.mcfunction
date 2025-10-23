#> asset:mob/zombie/action/curse_of_zombies/caution
#
# show caution
#
# @within asset:mob/zombie/

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle infested ~ ~ ~ 0.0 0.0 0.0 1 8 normal
    playsound entity.zombie.ambient hostile @a[distance=..16] ~ ~ ~ 1 0.75