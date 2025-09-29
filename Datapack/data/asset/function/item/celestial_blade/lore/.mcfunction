#> asset:item/celestial_blade/lore/
#
# update lore
#
# @handles #asset:item_lore_update

# get inventory
    data modify storage asset: Inventory append from entity @s Inventory[{components:{"minecraft:custom_data":{custom_item_id:"celestial_blade"}}}]
    # offhand
        execute if items entity @s weapon.offhand *[minecraft:custom_data~{custom_item_id:"celestial_blade"}] run function asset:item/celestial_blade/lore/offhand

# modify info
    execute if data storage asset: Inventory[] run function asset:item/celestial_blade/lore/modify