#> ui:crafter/page/weapon/init
#
# crafter init
#
# @context crafter changed process

# reset ui
    data modify entity @s Items set value [{Slot:0b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:1b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:2b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:3b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:4b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:5b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:6b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:7b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:8b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:9b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:17b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:18b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:19b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:20b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:21b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:22b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:23b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:24b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:25b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:26b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}}]

# set craftable_items
    $execute on passengers run data modify storage ui: craftable_items set from storage ui:recipe recipe.weapon[$(page)]
    execute if data storage ui: craftable_items[0] run function ui:crafter/page/weapon/get_entry {number:0}
    execute if data storage ui: craftable_items[0] run function ui:crafter/page/weapon/set_entry with storage ui: entry_data
    execute if data storage ui: craftable_items[1] run function ui:crafter/page/weapon/get_entry {number:1}
    execute if data storage ui: craftable_items[1] run function ui:crafter/page/weapon/set_entry with storage ui: entry_data
    execute if data storage ui: craftable_items[2] run function ui:crafter/page/weapon/get_entry {number:2}
    execute if data storage ui: craftable_items[2] run function ui:crafter/page/weapon/set_entry with storage ui: entry_data
    execute if data storage ui: craftable_items[3] run function ui:crafter/page/weapon/get_entry {number:3}
    execute if data storage ui: craftable_items[3] run function ui:crafter/page/weapon/set_entry with storage ui: entry_data
    execute if data storage ui: craftable_items[4] run function ui:crafter/page/weapon/get_entry {number:4}
    execute if data storage ui: craftable_items[4] run function ui:crafter/page/weapon/set_entry with storage ui: entry_data
    execute if data storage ui: craftable_items[5] run function ui:crafter/page/weapon/get_entry {number:5}
    execute if data storage ui: craftable_items[5] run function ui:crafter/page/weapon/set_entry with storage ui: entry_data
    execute if data storage ui: craftable_items[6] run function ui:crafter/page/weapon/get_entry {number:6}
    execute if data storage ui: craftable_items[6] run function ui:crafter/page/weapon/set_entry with storage ui: entry_data
    data remove storage ui: craftable_items

# add empty tag
    execute on passengers run tag @s remove empty0
    execute on passengers run tag @s remove empty1
    execute on passengers run tag @s remove empty2
    execute on passengers run tag @s remove empty3
    execute on passengers run tag @s remove empty4
    execute on passengers run tag @s remove empty5
    execute on passengers run tag @s remove empty6
    execute unless data entity @s Items[{Slot:10b}] on passengers run tag @s add empty0
    execute unless data entity @s Items[{Slot:11b}] on passengers run tag @s add empty1
    execute unless data entity @s Items[{Slot:12b}] on passengers run tag @s add empty2
    execute unless data entity @s Items[{Slot:13b}] on passengers run tag @s add empty3
    execute unless data entity @s Items[{Slot:14b}] on passengers run tag @s add empty4
    execute unless data entity @s Items[{Slot:15b}] on passengers run tag @s add empty5
    execute unless data entity @s Items[{Slot:16b}] on passengers run tag @s add empty6

# whether has multiple pages
    execute on passengers store result score $total_page temporary if data storage ui:recipe recipe.weapon[]
    scoreboard players remove $total_page temporary 1
    execute on passengers if score @s shop_page matches 1.. on vehicle run data modify entity @s Items append value {Slot:9b,id:"arrow",components:{"custom_data":{ui:{type:"backward"}},"item_name":{"text":"←","bold":true}}}
    execute on passengers if score @s shop_page < $total_page temporary on vehicle run data modify entity @s Items append value {Slot:17b,id:"arrow",components:{"custom_data":{ui:{type:"forward"}},"item_name":{"text":"→","bold":true}}}
    scoreboard players reset $total_page temporary

# set data
    data modify entity @s CustomName set value 'クラフター'