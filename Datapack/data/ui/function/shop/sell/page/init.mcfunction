#> ui:shop/sell/page/init
# 
# init ui
#
# @context item selling menu

# set data
data modify entity @s Items set value [{Slot:0b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:1b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:2b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:3b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:4b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:5b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:6b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:7b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:8b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"blank"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:17b,id:"green_concrete",components:{"custom_data":{ui:{type:"sell"}},"item_name":{"text":"売却を確定する","color":"#FFF6A8","bold":true}}},\
{Slot:18b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:19b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:20b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:21b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:22b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:23b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:24b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:25b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}},\
{Slot:26b,id:"black_stained_glass_pane",components:{"custom_data":{ui:{type:"none"}},"minecraft:tooltip_display":{hide_tooltip:true}}}]

# get item value
    data modify storage ui: item_data append from storage ui: new_items[{components:{"minecraft:custom_data":{can_sell:1b}}}]
    execute if data storage ui: item_data[] run function ui:shop/sell/value
    execute if score $total_value temporary matches 1.. run item modify entity @s container.17 ui:shop/sell_value

# reset
    scoreboard players reset $total_value temporary
    scoreboard players reset $total_count temporary