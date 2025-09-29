#> asset:item/celestial_blade/lore/modify
#
# modify compass
#
# @within asset:item/celestial_blade/lore/
    
# copy item
    data modify storage asset: celestial_blade set from storage asset: Inventory[0]

# updates shulker box
    data modify storage asset: __temp__.Slot set string storage asset: celestial_blade.Slot 0 -1
    data remove storage asset: celestial_blade.Slot
    execute in world:admin_area run data modify block 0 0 0 Items[] set from storage asset: celestial_blade

# get damage
    function asset:item/celestial_blade/get_needed_mana
    function asset:item/celestial_blade/get_data
    function asset:item/magic_damage_scaling

# set data
    execute in world:admin_area run item modify block 0 0 0 container.0 asset:dynamic_lore/celestial_blade

# give item
    function asset:item/celestial_blade/lore/give_item with storage asset: __temp__

# reset
    scoreboard players reset $damage temporary
    scoreboard players reset $damage_scaling temporary

# remove the item
    data remove storage asset: Inventory[0]
    data remove storage asset: celestial_blade
    data remove storage asset: __temp__.Slot
    execute in world:admin_area run data remove block 0 0 0 Items

# loop
    execute unless data storage asset: Inventory[] run data remove storage asset: Inventory
    execute if data storage asset: Inventory[] run function asset:item/celestial_blade/lore/modify