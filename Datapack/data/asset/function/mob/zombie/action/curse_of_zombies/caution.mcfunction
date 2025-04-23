#> asset:mob/zombie/action/curse_of_zombies/caution
#
# show caution
#
# @within asset:mob/zombie/

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle infested ~ ~ ~ 0.0 0.0 0.0 1 8 force @a[distance=..32]
    playsound entity.zombie.ambient hostile @a ~ ~ ~ 1 0.75