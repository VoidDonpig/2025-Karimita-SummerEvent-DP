#> ui:crafter/page/weapon/craft/check
#
# craft check and do
#
# @within ui:crafter/page/weapon/craft/changed

# get crafting item data
    $execute in world:admin_area run loot replace block 0 0 0 container.0 loot asset:item/$(result)
    execute in world:admin_area run data modify storage ui: give_item set from block 0 0 0 Items[{Slot:0b}]

# count item
    tag @s add craft_ok
    function ui:crafter/page/weapon/craft/count_item with storage ui: entry_data.recipe_components[0]

# give item
    execute if entity @s[tag=craft_ok] run function ui:crafter/page/weapon/craft/
    execute unless entity @s[tag=craft_ok] run data remove storage ui: give_item
    execute unless entity @s[tag=craft_ok] on vehicle on vehicle on attacker run tellraw @s {"text":"材料が足りない！","color":"red"}

# reset
    tag @s remove craft_ok
    tag @s remove crafting