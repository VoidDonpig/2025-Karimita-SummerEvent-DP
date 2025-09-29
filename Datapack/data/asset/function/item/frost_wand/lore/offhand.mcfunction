#> asset:item/frost_wand/lore/offhand
#
# offhand
#
# @within asset:item/frost_wand/lore/

# get damage
    function asset:item/frost_wand/get_needed_mana
    function asset:item/frost_wand/get_data
    function asset:item/magic_damage_scaling

# change lore
    item modify entity @s weapon.offhand asset:dynamic_lore/frost_wand

# reset
    scoreboard players reset $damage temporary
    scoreboard players reset $damage_scaling temporary