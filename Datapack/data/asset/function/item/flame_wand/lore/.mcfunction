#> asset:item/flame_wand/lore/
#
# update lore
#
# @handles #asset:item_lore_update

# get inventory
    data modify storage asset: Inventory append from entity @s Inventory[{components:{"minecraft:custom_data":{custom_item_id:"flame_wand"}}}]
    # offhand
        execute if items entity @s weapon.offhand compass[minecraft:custom_data~{custom_item_id:"flame_wand"}] run function asset:item/flame_wand/lore/offhand

# modify info
    execute if data storage asset: Inventory[] run function asset:item/flame_wand/lore/modify