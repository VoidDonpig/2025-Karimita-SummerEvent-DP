#> asset:item/lightning_wand/lore/offhand
#
# offhand
#
# @within asset:item/lightning_wand/lore/

# get damage
    function asset:item/lightning_wand/get_needed_mana
    function asset:item/lightning_wand/get_data
    function asset:item/magic_damage_scaling

# change lore
    item modify entity @s weapon.offhand asset:dynamic_lore/lightning_wand

# reset
    scoreboard players reset $damage temporary
    scoreboard players reset $damage_scaling temporary