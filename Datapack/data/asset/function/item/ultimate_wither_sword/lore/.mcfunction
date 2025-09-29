#> asset:item/ultimate_wither_sword/lore/
#
# update lore
#
# @handles #asset:item_lore_update

# get inventory
    data modify storage asset: Inventory append from entity @s Inventory[{components:{"minecraft:custom_data":{custom_item_id:"ultimate_wither_sword"}}}]
    # offhand
        execute if items entity @s weapon.offhand *[minecraft:custom_data~{custom_item_id:"ultimate_wither_sword"}] run function asset:item/ultimate_wither_sword/lore/offhand

# modify info
    execute if data storage asset: Inventory[] run function asset:item/ultimate_wither_sword/lore/modify