#> ui:crafter/page/weapon/changed
#
# changed process
#
# @context crafter page

# clear item
    clear @a[tag=using_ui] *[minecraft:custom_data~{ui:{type:"none"}}]
    clear @a[tag=using_ui] *[minecraft:custom_data~{ui:{type:"blank"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"forward"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"backward"}}]

# return unrelated item
    data modify storage ui: return_items set from storage ui: items
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"blank"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"none"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"forward"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"backward"}}}}]
    execute unless data storage ui: return_items[] run data remove storage ui: return_items
    execute if data storage ui: return_items[] run function ui:return_item/

# move to other page
    execute store result score $total_page temporary if data storage ui:recipe recipe.weapon[]
    scoreboard players remove $total_page temporary 1
    execute if score @s crafter_page < $total_page temporary unless data storage ui: items[{Slot:17b,components:{"minecraft:custom_data":{ui:{type:"forward"}}}}] run tag @s add forward
    execute if score @s crafter_page matches 1.. unless data storage ui: items[{Slot:9b,components:{"minecraft:custom_data":{ui:{type:"backward"}}}}] run tag @s add backward
    execute if entity @s[tag=backward] run scoreboard players remove @s crafter_page 1
    execute if entity @s[tag=forward] run scoreboard players add @s crafter_page 1

# move page
    execute unless data storage ui: items[{Slot:0b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:1b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:2b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:3b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:4b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:5b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:6b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:7b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:8b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:10b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] unless entity @s[tag=empty0] run scoreboard players set @s ui_page 100
    execute unless data storage ui: items[{Slot:11b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] unless entity @s[tag=empty1] run scoreboard players set @s ui_page 101
    execute unless data storage ui: items[{Slot:12b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] unless entity @s[tag=empty2] run scoreboard players set @s ui_page 102
    execute unless data storage ui: items[{Slot:13b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] unless entity @s[tag=empty3] run scoreboard players set @s ui_page 103
    execute unless data storage ui: items[{Slot:14b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] unless entity @s[tag=empty4] run scoreboard players set @s ui_page 104
    execute unless data storage ui: items[{Slot:15b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] unless entity @s[tag=empty5] run scoreboard players set @s ui_page 105
    execute unless data storage ui: items[{Slot:16b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] unless entity @s[tag=empty6] run scoreboard players set @s ui_page 106

# get page data
    execute store result storage ui: crafter_page.page int 1 run scoreboard players get @s crafter_page

# update menu
    execute if score @s ui_page matches 0 on vehicle run function ui:crafter/page/init
    execute if score @s ui_page matches 1 on vehicle run function ui:crafter/page/weapon/init with storage ui: crafter_page
    execute if score @s ui_page matches 100..106 on vehicle run function ui:crafter/page/weapon/craft/init with storage ui: crafter_page

# sound
    execute if entity @s[tag=tick_once] run playsound minecraft:ui.button.click master @p ~ ~ ~ 0.2 1.0 0.0

# prevent twise update
    execute on vehicle run data modify storage ui: items set from entity @s Items
    data modify entity @s data.items set from storage ui: items

# reset
    tag @s remove tick_once
    data remove storage ui: crafter_page
    scoreboard players reset $total_page temporary
    tag @s remove backward
    tag @s remove forward