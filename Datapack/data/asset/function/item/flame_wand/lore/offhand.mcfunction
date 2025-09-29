#> asset:item/flame_wand/lore/offhand
#
# offhand
#
# @within asset:item/flame_wand/lore/

# copy item
    data modify storage asset: flame_wand set from entity @s equipment.offhand

# get damage
    function asset:item/flame_wand/get_data
    function asset:item/magic_damage_scaling

# updates shulker box
    execute in world:admin_area run data modify block 0 0 0 Items[] set from storage asset: flame_wand

# change lore
    execute in world:admin_area run item modify block 0 0 0 container.0 asset:dynamic_lore/flame_wand

# give item
    execute in world:admin_area run loot replace entity @s weapon.offhand mine 0 0 0 debug_stick

# reset
    scoreboard players reset $damage temporary
    scoreboard players reset $damage_scaling temporary

# remove the item
    data remove storage asset: flame_wand
    execute in world:admin_area run data remove block 0 0 0 Items