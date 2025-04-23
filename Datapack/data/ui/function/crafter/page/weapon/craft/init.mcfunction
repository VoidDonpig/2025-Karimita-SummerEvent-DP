#> ui:crafter/page/weapon/craft/init
#
# init craft
#
# @within ui:crafter/page/weapon/changed

# get entry
    $data modify storage ui: craftable_items set from storage ui:recipe recipe.weapon[$(page)]
    execute if score @s ui_page matches 100 run function ui:crafter/page/weapon/get_entry {number:0}
    execute if score @s ui_page matches 101 run function ui:crafter/page/weapon/get_entry {number:1}
    execute if score @s ui_page matches 102 run function ui:crafter/page/weapon/get_entry {number:2}
    execute if score @s ui_page matches 103 run function ui:crafter/page/weapon/get_entry {number:3}
    execute if score @s ui_page matches 104 run function ui:crafter/page/weapon/get_entry {number:4}
    execute if score @s ui_page matches 105 run function ui:crafter/page/weapon/get_entry {number:5}
    execute if score @s ui_page matches 106 run function ui:crafter/page/weapon/get_entry {number:6}
    data modify entity @s data.crafting_item set from storage ui: entry_data

# craft check
    function ui:crafter/page/weapon/craft/check with entity @s data.crafting_item