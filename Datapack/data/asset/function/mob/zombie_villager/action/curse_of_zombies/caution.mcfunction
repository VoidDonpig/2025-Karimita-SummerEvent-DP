#> asset:mob/zombie_villager/action/curse_of_zombie_villagers/caution
#
# show caution
#
# @within asset:mob/zombie_villager/

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle infested ~ ~ ~ 0.0 0.0 0.0 1 8 force @a[distance=..32]
    playsound entity.zombie_villager.ambient hostile @a ~ ~ ~ 1 0.75