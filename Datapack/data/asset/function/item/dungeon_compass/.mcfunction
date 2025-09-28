#> asset:item/dungeon_compass/
#
# update compass
#
# @within world:dungeon/*/enter/

# get inventory
    data modify storage asset: Inventory append from entity @s Inventory[{components:{"minecraft:custom_data":{custom_item_id:"dungeon_compass"}}}]
    # offhand
        execute if items entity @s weapon.offhand compass[minecraft:custom_data~{custom_item_id:"dungeon_compass"}] run function asset:item/dungeon_compass/offhand

# modify info
    execute if data storage asset: Inventory[] run function asset:item/dungeon_compass/modify