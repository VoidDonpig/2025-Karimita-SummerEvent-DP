#> ui:crafter/page/weapon/craft/count_item
#
# count item
#
# @within ui:crafter/page/weapon/craft/check

# count item
    execute store result score $needed_items temporary run data get storage ui: entry_data.recipe_components[0].count
    execute store result score $custom temporary run data get storage ui: entry_data.recipe_components[0].custom
    $execute if score $custom temporary matches 0 on vehicle on vehicle on attacker store result score $count temporary run clear @s $(name)[!minecraft:custom_data~{custom_item:1b}] 0
    $execute if score $custom temporary matches 1 on vehicle on vehicle on attacker store result score $count temporary run clear @s $(name)[minecraft:custom_data~$(custom_data)] 0
    execute if score $needed_items temporary > $count temporary run tag @s remove craft_ok

# repeat
    data remove storage ui: entry_data.recipe_components[0]
    execute unless data storage ui: entry_data.recipe_components[0] run scoreboard players reset $needed_items temporary
    execute unless data storage ui: entry_data.recipe_components[0] run scoreboard players reset $custom temporary
    execute unless data storage ui: entry_data.recipe_components[0] run scoreboard players reset $count temporary
    execute unless data storage ui: entry_data.recipe_components[0] run data remove entity @s data.crafting_item.recipe_components
    execute if data storage ui: entry_data.recipe_components[0] run function ui:crafter/page/weapon/craft/count_item with storage ui: entry_data.recipe_components[0]