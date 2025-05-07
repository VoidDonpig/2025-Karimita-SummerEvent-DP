#> ui:crafter/page/weapon/craft/init
#
# init craft
#
# @within ui:crafter/page/weapon/changed

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
{Slot:22b,id:"minecraft:red_concrete",components:{"minecraft:item_name":'{"text": "材料が足りない！","italic":false,"bold":true}',"minecraft:custom_data":{ui:{type:"blank"}}}},\
{Slot:23b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:24b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:25b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:26b,id:"minecraft:black_stained_glass_pane",components:{"minecraft:item_name":'{"text": ""}',"minecraft:custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}}]

# get entry
    $data modify storage ui: craftable_items set from storage ui:recipe recipe.weapon[$(page)]
    execute on passengers if score @s ui_page matches 100 on vehicle run function ui:crafter/page/weapon/craft/get_entry {number:0}
    execute on passengers if score @s ui_page matches 100 on vehicle run function ui:crafter/page/weapon/craft/set_entry with storage ui: entry_data
    execute on passengers if score @s ui_page matches 101 on vehicle run function ui:crafter/page/weapon/craft/get_entry {number:1}
    execute on passengers if score @s ui_page matches 101 on vehicle run function ui:crafter/page/weapon/craft/set_entry with storage ui: entry_data
    execute on passengers if score @s ui_page matches 102 on vehicle run function ui:crafter/page/weapon/craft/get_entry {number:2}
    execute on passengers if score @s ui_page matches 102 on vehicle run function ui:crafter/page/weapon/craft/set_entry with storage ui: entry_data
    execute on passengers if score @s ui_page matches 103 on vehicle run function ui:crafter/page/weapon/craft/get_entry {number:3}
    execute on passengers if score @s ui_page matches 103 on vehicle run function ui:crafter/page/weapon/craft/set_entry with storage ui: entry_data
    execute on passengers if score @s ui_page matches 104 on vehicle run function ui:crafter/page/weapon/craft/get_entry {number:4}
    execute on passengers if score @s ui_page matches 104 on vehicle run function ui:crafter/page/weapon/craft/set_entry with storage ui: entry_data
    execute on passengers if score @s ui_page matches 105 on vehicle run function ui:crafter/page/weapon/craft/get_entry {number:5}
    execute on passengers if score @s ui_page matches 105 on vehicle run function ui:crafter/page/weapon/craft/set_entry with storage ui: entry_data
    execute on passengers if score @s ui_page matches 106 on vehicle run function ui:crafter/page/weapon/craft/get_entry {number:6}
    execute on passengers if score @s ui_page matches 106 on vehicle run function ui:crafter/page/weapon/craft/set_entry with storage ui: entry_data

# craft ok
    execute on passengers if entity @s[tag=craft_ok] on vehicle run item replace entity @s container.22 with green_concrete[item_name={"text": "クリックでクラフト",italic:false,bold:true},custom_data={ui:{type:"blank"}}]

# reset
    execute on passengers run tag @s remove craft_ok