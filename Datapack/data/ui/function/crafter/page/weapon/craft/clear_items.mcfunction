#> ui:crafter/page/weapon/craft/clear_items
#
# clear items
#
# @within ui:crafter/page/weapon/craft/check

# count item
    execute store result score $custom temporary run data get entity @s data.crafting_item.recipe_components[0].custom
    $execute if score $custom temporary matches 0 on vehicle on vehicle on attacker run clear @s $(name)[!minecraft:custom_data~{custom_item:1b}] $(count)
    $execute if score $custom temporary matches 1 on vehicle on vehicle on attacker run clear @s $(name)[minecraft:custom_data~$(custom_data)] $(count)

# repeat
    data remove entity @s data.crafting_item.recipe_components[0]
    execute unless data entity @s data.crafting_item.recipe_components[0] run scoreboard players reset $custom temporary
    execute unless data entity @s data.crafting_item.recipe_components[0] run data remove entity @s data.crafting_item.recipe_components
    execute if data entity @s data.crafting_item.recipe_components[0] run function ui:crafter/page/weapon/craft/clear_items with entity @s data.crafting_item.recipe_components[0]