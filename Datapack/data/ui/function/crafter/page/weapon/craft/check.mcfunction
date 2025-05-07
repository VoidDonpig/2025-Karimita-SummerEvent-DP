#> ui:crafter/page/weapon/craft/check
#
# craft check and do
#
# @within ui:crafter/page/weapon/craft/changed

# get entry
    $data modify storage ui: craftable_items set from storage ui:recipe recipe.weapon[$(page)]
    execute if score @s ui_page matches 100 run function ui:crafter/page/weapon/craft/get_entry {number:0}
    execute if score @s ui_page matches 101 run function ui:crafter/page/weapon/craft/get_entry {number:1}
    execute if score @s ui_page matches 102 run function ui:crafter/page/weapon/craft/get_entry {number:2}
    execute if score @s ui_page matches 103 run function ui:crafter/page/weapon/craft/get_entry {number:3}
    execute if score @s ui_page matches 104 run function ui:crafter/page/weapon/craft/get_entry {number:4}
    execute if score @s ui_page matches 105 run function ui:crafter/page/weapon/craft/get_entry {number:5}
    execute if score @s ui_page matches 106 run function ui:crafter/page/weapon/craft/get_entry {number:6}

# set data
    data modify entity @s data.crafting_item set from storage ui: entry_data

# get item data
    function ui:crafter/page/weapon/craft/get_crafting_data with storage ui: entry_data

# count item
    tag @s add craft_ok
    function ui:crafter/page/weapon/craft/count_item with storage ui: entry_data.recipe_components[0]

# give item
    execute if entity @s[tag=craft_ok] run function ui:crafter/page/weapon/craft/
    execute unless entity @s[tag=craft_ok] run data remove storage ui: give_item
    execute unless entity @s[tag=craft_ok] on vehicle on vehicle on attacker run tellraw @s {"text":"材料が足りない！","color":"red"}
    execute unless entity @s[tag=craft_ok] on vehicle on vehicle on attacker run playsound entity.player.teleport master @s ~ ~ ~ 1 0.5

# reset
    data remove storage ui: entry_data
    data remove storage ui: craftable_items
    data remove entity @s data.crafting_item
    tag @s remove craft_ok
    tag @s remove crafting