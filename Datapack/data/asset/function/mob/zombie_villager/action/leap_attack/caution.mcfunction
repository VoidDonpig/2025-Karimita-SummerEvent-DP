#> asset:mob/zombie_villager/action/leap_attack/caution
#
# leap attack caution
#
# @within asset:mob/zombie_villager/

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle minecraft:angry_villager ~ ~ ~ 0.0 0.0 0.0 0.0 1 force @a[distance=..32]
    playsound minecraft:entity.breeze.idle_ground hostile @a ~ ~ ~ 1.0 2.0