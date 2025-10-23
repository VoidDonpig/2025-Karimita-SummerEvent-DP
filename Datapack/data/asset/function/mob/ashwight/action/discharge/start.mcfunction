#> asset:mob/ashwight/action/discharge/start
#
# start the action
#
# @within asset:mob/ashwight/

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle minecraft:smoke ~ ~ ~ 0.0 0.0 0.0 0.1 16 normal
    playsound minecraft:entity.breeze.idle_ground hostile @a[distance=..32] ~ ~ ~ 1.0 1.6

# add tag
    tag @s add asset.ashwight.discharging