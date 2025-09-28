#> asset:item/dungeon_torch/modify
#
# modify torch
#
# @within asset:item/dungeon_torch/
    
# copy item
    data modify storage asset: dungeon_torch set from storage asset: Inventory[0]

# updates shulker box
    data modify storage asset: __temp__.Slot set string storage asset: dungeon_torch.Slot 0 -1
    data remove storage asset: dungeon_torch.Slot
    execute in world:admin_area run data modify block 0 0 0 Items[] set from storage asset: dungeon_torch

# set data
    execute in world:admin_area run item modify block 0 0 0 container.0 asset:item/dungeon_torch/add

# give item
    function asset:item/dungeon_torch/give_item with storage asset: __temp__

# remove the item
    data remove storage asset: Inventory[0]
    data remove storage asset: dungeon_torch
    data remove storage asset: __temp__.Slot
    execute in world:admin_area run data remove block 0 0 0 Items

# loop
    execute unless data storage asset: Inventory[] run data remove storage asset: Inventory
    execute if data storage asset: Inventory[] run function asset:item/dungeon_torch/modify