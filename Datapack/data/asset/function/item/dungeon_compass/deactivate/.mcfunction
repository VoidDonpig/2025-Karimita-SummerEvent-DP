#> asset:item/dungeon_compass/deactivate/
#
# update compass
#
# @within player:trigger/changed_dimension/

# get inventory
    data modify storage asset: Inventory append from entity @s Inventory[{components:{"minecraft:custom_data":{custom_item_id:"dungeon_compass_activated"}}}]
    # offhand
        execute if items entity @s weapon.offhand compass[minecraft:custom_data~{custom_item_id:"dungeon_compass_activated"}] run function asset:item/dungeon_compass/deactivate/offhand

# modify info
    execute if data storage asset: Inventory[] run function asset:item/dungeon_compass/deactivate/modify