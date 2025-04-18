#> asset:mob/wither_skeleton/action/skull_shot/caution
#
# caution skull shot
#
# @within asset:mob/wither_skeleton/

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle crit ~ ~ ~ 0.0 0.0 0.0 0.6 8 force @a[distance=..32]
    playsound entity.wither_skeleton.hurt hostile @a ~ ~ ~ 1 1.75