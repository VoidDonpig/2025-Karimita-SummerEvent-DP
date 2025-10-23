#> asset:mob/wither_skeleton/action/swap_weapon/melee
#
# grap melee weapon
#
# @within asset:mob/wither_skeleton/action/swap_weapon/check

# sfx
    execute anchored eyes positioned ^ ^ ^ run particle crit ~ ~ ~ 0.0 0.0 0.0 0.4 4 normal
    playsound item.armor.equip_diamond hostile @a[distance=..16] ~ ~ ~ 1 1

# grab axe
    execute if score $difficulty_level world matches 0 run item replace entity @s weapon.mainhand with stone_sword[attribute_modifiers=[{id:"swap_weapon.wither_skeleton.movement_speed_increase",amount:0.1,operation:"add_value",type:"movement_speed",slot:"any"}]]
    execute if score $difficulty_level world matches 1 run item replace entity @s weapon.mainhand with iron_sword[attribute_modifiers=[{id:"swap_weapon.wither_skeleton.movement_speed_increase",amount:0.1,operation:"add_value",type:"movement_speed",slot:"any"}]]
    execute if score $difficulty_level world matches 2 run item replace entity @s weapon.mainhand with diamond_sword[attribute_modifiers=[{id:"swap_weapon.wither_skeleton.movement_speed_increase",amount:0.1,operation:"add_value",type:"movement_speed",slot:"any"}]]
    execute if score $difficulty_level world matches 3..5 run item replace entity @s weapon.mainhand with netherite_sword[attribute_modifiers=[{id:"swap_weapon.wither_skeleton.movement_speed_increase",amount:0.1,operation:"add_value",type:"movement_speed",slot:"any"}]]