#> asset:mob/stray/action/skull_shot/caution
#
# caution skull shot
#
# @within asset:mob/stray/

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle crit ~ ~ ~ 0.0 0.0 0.0 0.6 8 force @a[distance=..32]
    playsound entity.stray.hurt hostile @a ~ ~ ~ 1 1.75