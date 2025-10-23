#> asset:mob/zombified_piglin/action/throw_sword/caution
#
# caution attack
#
# @within asset:mob/zombified_piglin/tick/have_target

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle crit ~ ~ ~ 0.0 0.0 0.0 0.4 4 normal
    playsound item.armor.equip_gold hostile @a[distance=..16] ~ ~ ~ 1 1.5