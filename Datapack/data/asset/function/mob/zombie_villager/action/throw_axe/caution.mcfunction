#> asset:mob/zombie_villager/action/throw_axe/caution
#
# caution attack
#
# @within asset:mob/zombie_villager/tick/have_target

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle crit ~ ~ ~ 0.0 0.0 0.0 0.4 4 normal
    playsound item.armor.equip_leather hostile @a[distance=..16] ~ ~ ~ 1 1.5