#> ui:crafter/page/changed
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

# move page
    execute unless data storage ui: items[{Slot:11b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 1
    execute unless data storage ui: items[{Slot:12b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 2
    execute unless data storage ui: items[{Slot:14b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 3
    execute unless data storage ui: items[{Slot:15b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 4

# get page data
    execute store result storage ui: crafter_page.page int 1 run scoreboard players get @s crafter_page

# update menu
    execute if score @s ui_page matches 0 on vehicle run function ui:crafter/page/init
    execute if score @s ui_page matches 1 on vehicle run function ui:crafter/page/weapon/init with storage ui: crafter_page

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