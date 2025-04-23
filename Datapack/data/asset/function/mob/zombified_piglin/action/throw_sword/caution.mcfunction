#> asset:mob/zombified_piglin/action/throw_sword/caution
#
# caution attack
#
# @within asset:mob/zombified_piglin/tick/have_target

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle crit ~ ~ ~ 0.0 0.0 0.0 0.4 4 force @a[distance=..32]
    playsound item.armor.equip_gold hostile @a ~ ~ ~ 1 1.5