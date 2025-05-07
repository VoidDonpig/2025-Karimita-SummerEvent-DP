#> ui:crafter/page/weapon/craft/changed
#
# changed process
#
# @within ui:crafter/page/number

# clear item
    clear @a[tag=using_ui] *[minecraft:custom_data~{ui:{type:"none"}}]
    clear @a[tag=using_ui] *[minecraft:custom_data~{ui:{type:"blank"}}]

# return unrelated item
    data modify storage ui: return_items set from storage ui: items
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"blank"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"none"}}}}]
    execute unless data storage ui: return_items[] run data remove storage ui: return_items
    execute if data storage ui: return_items[] run function ui:return_item/

# move page
    execute unless data storage ui: items[{Slot:0b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 1
    execute unless data storage ui: items[{Slot:1b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 1
    execute unless data storage ui: items[{Slot:2b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 1
    execute unless data storage ui: items[{Slot:3b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 1
    execute unless data storage ui: items[{Slot:4b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 1
    execute unless data storage ui: items[{Slot:5b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 1
    execute unless data storage ui: items[{Slot:6b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 1
    execute unless data storage ui: items[{Slot:7b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 1
    execute unless data storage ui: items[{Slot:8b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 1

# craft button
    execute unless data storage ui: items[{Slot:22b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run tag @s add crafting

# get page data
    execute store result storage ui: crafter_page.page int 1 run scoreboard players get @s crafter_page

# update menu
    execute if score @s ui_page matches 0 on vehicle run function ui:crafter/page/init
    execute if score @s ui_page matches 1 on vehicle run function ui:crafter/page/weapon/init with storage ui: crafter_page
    execute if score @s ui_page matches 100..106 on vehicle run function ui:crafter/page/weapon/craft/init with storage ui: crafter_page

# craft
    execute if entity @s[tag=crafting] run function ui:crafter/page/weapon/craft/check with storage ui: crafter_page

# sound
    execute if entity @s[tag=tick_once] run playsound minecraft:ui.button.click master @p ~ ~ ~ 0.2 1.0 0.0

# prevent twise update
    execute on vehicle run data modify storage ui: items set from entity @s Items
    data modify entity @s data.items set from storage ui: items

# reset
    tag @s remove tick_once
    data remove storage ui: crafter_page
    scoreboard players reset $total_page temporary