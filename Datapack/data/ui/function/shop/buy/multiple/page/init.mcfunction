#> ui:shop/buy/multiple/page/init
#
# init ui
#
# @within ui:shop/buy/init

# overwrite
    item replace entity @s container.9 with black_stained_glass_pane[custom_data={ui:{type:"none"}},tooltip_display={hide_tooltip:true}]
    item replace entity @s container.10 with black_stained_glass_pane[custom_data={ui:{type:"none"}},tooltip_display={hide_tooltip:true}]
    item replace entity @s container.17 with black_stained_glass_pane[custom_data={ui:{type:"none"}},tooltip_display={hide_tooltip:true}]
    item replace entity @s container.18 with black_stained_glass_pane[custom_data={ui:{type:"none"}},tooltip_display={hide_tooltip:true}]
    item replace entity @s container.19 with black_stained_glass_pane[custom_data={ui:{type:"none"}},tooltip_display={hide_tooltip:true}]
    item replace entity @s container.20 with black_stained_glass_pane[custom_data={ui:{type:"none"}},tooltip_display={hide_tooltip:true}]
    item replace entity @s container.21 with black_stained_glass_pane[custom_data={ui:{type:"none"}},tooltip_display={hide_tooltip:true}]
    item replace entity @s container.22 with black_stained_glass_pane[custom_data={ui:{type:"none"}},tooltip_display={hide_tooltip:true}]
    item replace entity @s container.23 with black_stained_glass_pane[custom_data={ui:{type:"none"}},tooltip_display={hide_tooltip:true}]
    item replace entity @s container.24 with black_stained_glass_pane[custom_data={ui:{type:"none"}},tooltip_display={hide_tooltip:true}]
    item replace entity @s container.25 with black_stained_glass_pane[custom_data={ui:{type:"none"}},tooltip_display={hide_tooltip:true}]

# set purchase button
    $execute in world:admin_area run loot replace block 0 0 0 container.0 loot asset:item/$(id)
    execute in world:admin_area run item replace entity @s container.11 from block 0 0 0 container.0
    execute in world:admin_area run item replace entity @s container.12 from block 0 0 0 container.0
    execute in world:admin_area run item replace entity @s container.13 from block 0 0 0 container.0
    execute in world:admin_area run item replace entity @s container.14 from block 0 0 0 container.0
    execute in world:admin_area run item replace entity @s container.15 from block 0 0 0 container.0
    data modify entity @s Items[{Slot:11b}].count set value 1
    data modify entity @s Items[{Slot:12b}].count set value 5
    data modify entity @s Items[{Slot:13b}].count set value 10
    data modify entity @s Items[{Slot:14b}].count set value 32
    data modify entity @s Items[{Slot:15b}].count set value 64
    data modify entity @s Items[{Slot:11b}].components."minecraft:custom_data".ui.type set value blank
    data modify entity @s Items[{Slot:12b}].components."minecraft:custom_data".ui.type set value blank
    data modify entity @s Items[{Slot:13b}].components."minecraft:custom_data".ui.type set value blank
    data modify entity @s Items[{Slot:14b}].components."minecraft:custom_data".ui.type set value blank
    data modify entity @s Items[{Slot:15b}].components."minecraft:custom_data".ui.type set value blank

# move to multiple page
    execute on passengers if score @s ui_page matches 2..7 run scoreboard players add @s ui_page 10