#> asset:mob/wither_skeleton/action/swap_weapon/check
#
# check
#
# @within asset:mob/wither_skeleton/tick/have_target

# check having correct weapon
    # if melee mode
        execute if entity @s[tag=mode.melee] if items entity @s weapon.mainhand bow run function asset:mob/wither_skeleton/action/swap_weapon/melee
    # if ranged mode
        execute if entity @s[tag=mode.ranged] unless items entity @s weapon.mainhand bow run function asset:mob/wither_skeleton/action/swap_weapon/ranged