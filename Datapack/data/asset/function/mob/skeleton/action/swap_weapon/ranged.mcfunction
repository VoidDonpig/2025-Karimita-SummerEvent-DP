#> asset:mob/skeleton/action/swap_weapon/ranged
#
# grab ranged weapon
#
# @within asset:mob/skeleton/action/swap_weapon/check

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle crit ~ ~ ~ 0.0 0.0 0.0 0.4 4 force @a[distance=..32]
    playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1

# grab bow
    execute if score $difficulty_level world matches 0..1 run item replace entity @s weapon.mainhand with bow
    execute if score $difficulty_level world matches 2..4 run item replace entity @s weapon.mainhand with bow[enchantments={power:1}]
    execute if score $difficulty_level world matches 5 run item replace entity @s weapon.mainhand with bow[enchantments={power:2}]