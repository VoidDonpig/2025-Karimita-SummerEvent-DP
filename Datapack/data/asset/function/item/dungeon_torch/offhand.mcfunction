#> asset:item/dungeon_torch/offhand
#
# offhand
#
# @within asset:item/dungeon_torch/

# copy item
    data modify storage asset: dungeon_torch set from entity @s equipment.offhand


# updates shulker box
    execute in world:admin_area run data modify block 0 0 0 Items[] set from storage asset: dungeon_torch

# set data
    execute in world:admin_area run item modify block 0 0 0 container.0 asset:item/dungeon_torch/add

# give item
    execute in world:admin_area run loot replace entity @s weapon.offhand mine 0 0 0 debug_stick

# remove the item
    data remove storage asset: dungeon_torch
    execute in world:admin_area run data remove block 0 0 0 Items