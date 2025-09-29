#> asset:item/ultimate_wither_sword/lore/modify
#
# modify compass
#
# @within asset:item/ultimate_wither_sword/lore/
    
# copy item
    data modify storage asset: ultimate_wither_sword set from storage asset: Inventory[0]

# updates shulker box
    data modify storage asset: __temp__.Slot set string storage asset: ultimate_wither_sword.Slot 0 -1
    data remove storage asset: ultimate_wither_sword.Slot
    execute in world:admin_area run data modify block 0 0 0 Items[] set from storage asset: ultimate_wither_sword

# get damage
    function asset:item/ultimate_wither_sword/get_data
    function asset:item/magic_damage_scaling

# set data
    execute in world:admin_area run item modify block 0 0 0 container.0 asset:dynamic_lore/ultimate_wither_sword

# give item
    function asset:item/ultimate_wither_sword/lore/give_item with storage asset: __temp__

# reset
    scoreboard players reset $damage temporary
    scoreboard players reset $damage_scaling temporary

# remove the item
    data remove storage asset: Inventory[0]
    data remove storage asset: ultimate_wither_sword
    data remove storage asset: __temp__.Slot
    execute in world:admin_area run data remove block 0 0 0 Items

# loop
    execute unless data storage asset: Inventory[] run data remove storage asset: Inventory
    execute if data storage asset: Inventory[] run function asset:item/ultimate_wither_sword/lore/modify