#> asset:item/dungeon_torch/
#
# update torch
#
# @within player:trigger/changed_dimension/

# get inventory
    data modify storage asset: Inventory append from entity @s Inventory[{components:{"minecraft:custom_data":{custom_item_id:"dungeon_torch"}}}]
    # offhand
        execute if items entity @s weapon.offhand *[minecraft:custom_data~{custom_item_id:"dungeon_torch"}] run item modify entity @s weapon.offhand asset:item/dungeon_torch/add

# modify info
    execute if data storage asset: Inventory[] run function asset:item/dungeon_torch/modify