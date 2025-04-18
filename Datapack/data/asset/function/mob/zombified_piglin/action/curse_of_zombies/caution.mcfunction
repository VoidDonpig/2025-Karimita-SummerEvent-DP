#> asset:mob/zombified_piglin/action/curse_of_zombified_piglins/caution
#
# show caution
#
# @within asset:mob/zombified_piglin/

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle infested ~ ~ ~ 0.0 0.0 0.0 1 8 force @a[distance=..32]
    playsound entity.zombified_piglin.ambient hostile @a ~ ~ ~ 1 0.75