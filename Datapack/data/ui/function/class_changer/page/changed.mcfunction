#> ui:class_changer/page/changed

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
    execute unless data storage ui: items[{Slot:11b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] as @p at @s run function player:class/knight/join
    execute unless data storage ui: items[{Slot:12b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] as @p at @s run function player:class/assassin/join
    execute unless data storage ui: items[{Slot:13b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] as @p at @s run function player:class/archer/join
    execute unless data storage ui: items[{Slot:14b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] as @p at @s run function player:class/wizard/join
    execute unless data storage ui: items[{Slot:15b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] as @p at @s run function player:class/healer/join

# update menu
    execute if score @s ui_page matches 0 on vehicle run function ui:class_changer/page/init

# sound
    execute if entity @s[tag=tick_once] run playsound minecraft:ui.button.click master @p ~ ~ ~ 0.2 1.0 0.0

# prevent twise update
    execute on vehicle run data modify storage ui: items set from entity @s Items
    data modify entity @s data.items set from storage ui: items

# reset
    tag @s remove tick_once