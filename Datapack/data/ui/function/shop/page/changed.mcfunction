#> ui:shop/page/changed
#
# ui update process
#
# @within ui:shop/page/number

# clear ui items
    clear @a[tag=using_ui] black_stained_glass_pane
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"none"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"goods"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"blank"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"forward"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"backward"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"sell"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"buy"}}]

# return items
    data modify storage ui: return_items set from storage ui: items
    data remove storage ui: return_items[{id:"minecraft:black_stained_glass_pane"}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"blank"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"goods"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"forward"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"backward"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"sell"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"buy"}}}}]
    execute unless data storage ui: return_items[] run data remove storage ui: return_items
    execute if data storage ui: return_items[] run function ui:return_item/

# move to other page
    execute store result score $total_page temporary if data entity @s data.shop_data[]
    scoreboard players remove $total_page temporary 1
    execute if score @s shop_page < $total_page temporary unless data storage ui: items[{Slot:16b,components:{"minecraft:custom_data":{ui:{type:"forward"}}}}] run tag @s add forward
    execute if score @s shop_page matches 1.. unless data storage ui: items[{Slot:9b,components:{"minecraft:custom_data":{ui:{type:"backward"}}}}] run tag @s add backward
    execute if entity @s[tag=backward] run scoreboard players remove @s shop_page 1
    execute if entity @s[tag=forward] run scoreboard players add @s shop_page 1
    
    execute unless data storage ui: items[{Slot:10b,components:{"minecraft:custom_data":{ui:{type:"goods"}}}}] unless entity @s[tag=empty0] run scoreboard players set @s ui_page 2
    execute unless data storage ui: items[{Slot:11b,components:{"minecraft:custom_data":{ui:{type:"goods"}}}}] unless entity @s[tag=empty1] run scoreboard players set @s ui_page 3
    execute unless data storage ui: items[{Slot:12b,components:{"minecraft:custom_data":{ui:{type:"goods"}}}}] unless entity @s[tag=empty2] run scoreboard players set @s ui_page 4
    execute unless data storage ui: items[{Slot:13b,components:{"minecraft:custom_data":{ui:{type:"goods"}}}}] unless entity @s[tag=empty3] run scoreboard players set @s ui_page 5
    execute unless data storage ui: items[{Slot:14b,components:{"minecraft:custom_data":{ui:{type:"goods"}}}}] unless entity @s[tag=empty4] run scoreboard players set @s ui_page 6
    execute unless data storage ui: items[{Slot:15b,components:{"minecraft:custom_data":{ui:{type:"goods"}}}}] unless entity @s[tag=empty5] run scoreboard players set @s ui_page 7
    execute unless data storage ui: items[{Slot:17b,components:{"minecraft:custom_data":{ui:{type:"sell"}}}}] run scoreboard players set @s ui_page 1

# get page data
    execute store result storage ui: shop_page.page int 1 run scoreboard players get @s shop_page

# buy item
    execute if score @s ui_page matches 2..7 run function ui:shop/buy/init with storage ui: shop_page

# update ui
    execute if score @s ui_page matches 0 on vehicle run function ui:shop/page/init with storage ui: shop_page
    execute if score @s ui_page matches 1 on vehicle run function ui:shop/sell/page/init
    
# playsound
    execute if entity @s[tag=playsound_once] on vehicle on vehicle on attacker run playsound ui.button.click master @s ~ ~ ~ 0.5 1.0
    execute if entity @s[tag=playsound_once] run tag @s remove playsound_once

# prevent double update
    execute on vehicle run data modify storage ui: items set from entity @s Items
    data modify entity @s data.items set from storage ui: items

# reset
    scoreboard players reset $count temporary
    tag @s remove tick_once
    data remove storage ui: shop_page
    scoreboard players reset $total_page temporary
    tag @s remove backward
    tag @s remove forward