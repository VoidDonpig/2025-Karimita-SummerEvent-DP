#> asset:item/flame_wand/lore/modify
#
# modify compass
#
# @within asset:item/flame_wand/lore/
    
# copy item
    data modify storage asset: flame_wand set from storage asset: Inventory[0]

# updates shulker box
    data modify storage asset: __temp__.Slot set string storage asset: flame_wand.Slot 0 -1
    data remove storage asset: flame_wand.Slot
    execute in world:admin_area run data modify block 0 0 0 Items[] set from storage asset: flame_wand

# get damage
    function asset:item/flame_wand/get_needed_mana
    function asset:item/flame_wand/get_data
    function asset:item/magic_damage_scaling

# set data
    execute in world:admin_area run item modify block 0 0 0 container.0 asset:dynamic_lore/flame_wand

# give item
    function asset:item/flame_wand/lore/give_item with storage asset: __temp__

# reset
    scoreboard players reset $damage temporary
    scoreboard players reset $damage_scaling temporary

# remove the item
    data remove storage asset: Inventory[0]
    data remove storage asset: flame_wand
    data remove storage asset: __temp__.Slot
    execute in world:admin_area run data remove block 0 0 0 Items

# loop
    execute unless data storage asset: Inventory[] run data remove storage asset: Inventory
    execute if data storage asset: Inventory[] run function asset:item/flame_wand/lore/modify