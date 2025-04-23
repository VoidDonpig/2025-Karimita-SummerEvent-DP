#> asset:mob/zombie/action/throw_axe/caution
#
# caution attack
#
# @within asset:mob/zombie/tick/have_target

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle crit ~ ~ ~ 0.0 0.0 0.0 0.4 4 force @a[distance=..32]
    playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.5