#> asset:item/ultimate_wither_sword/lore/offhand
#
# offhand
#
# @within asset:item/ultimate_wither_sword/lore/

# get damage
    function asset:item/ultimate_wither_sword/get_needed_mana
    function asset:item/ultimate_wither_sword/get_data
    function asset:item/magic_damage_scaling

# change lore
    item modify entity @s weapon.offhand asset:dynamic_lore/ultimate_wither_sword

# reset
    scoreboard players reset $damage temporary
    scoreboard players reset $damage_scaling temporary