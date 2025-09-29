#> asset:item/celestial_blade/lore/offhand
#
# offhand
#
# @within asset:item/celestial_blade/lore/

# get damage
    function asset:item/celestial_blade/get_needed_mana
    function asset:item/celestial_blade/get_data
    function asset:item/magic_damage_scaling

# change lore
    item modify entity @s weapon.offhand asset:dynamic_lore/celestial_blade

# reset
    scoreboard players reset $damage temporary
    scoreboard players reset $damage_scaling temporary