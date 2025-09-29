#> asset:item/ultimate_wither_sword/lore/offhand
#
# offhand
#
# @within asset:item/ultimate_wither_sword/lore/

# copy item
    data modify storage asset: ultimate_wither_sword set from entity @s equipment.offhand

# get damage
    function asset:item/ultimate_wither_sword/get_data
    function asset:item/magic_damage_scaling

# updates shulker box
    execute in world:admin_area run data modify block 0 0 0 Items[] set from storage asset: ultimate_wither_sword

# change lore
    execute in world:admin_area run item modify block 0 0 0 container.0 asset:dynamic_lore/ultimate_wither_sword

# give item
    execute in world:admin_area run loot replace entity @s weapon.offhand mine 0 0 0 debug_stick

# reset
    scoreboard players reset $damage temporary
    scoreboard players reset $damage_scaling temporary

# remove the item
    data remove storage asset: ultimate_wither_sword
    execute in world:admin_area run data remove block 0 0 0 Items