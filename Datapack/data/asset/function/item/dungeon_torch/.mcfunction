#> asset:item/dungeon_torch/
#
# update torch
#
# @within player:trigger/changed_dimension/

# get inventory
    data modify storage asset: Inventory append from entity @s Inventory[{components:{"minecraft:custom_data":{custom_item_id:"dungeon_torch"}}}]
    # offhand
        execute if items entity @s weapon.offhand torch[minecraft:custom_data~{custom_item_id:"dungeon_torch"}] run function asset:item/dungeon_torch/offhand

# modify info
    execute if data storage asset: Inventory[] run function asset:item/dungeon_torch/modify