#> ui:shop/sell/page/changed
#
# changed process
#
# @within ui:shop/page/number

# cleat ui items
    clear @a[tag=using_ui] black_stained_glass_pane
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"none"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"goods"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"blank"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"forward"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"backward"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"sell"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"buy"}}]

# refine data
    # sellable items→sell_items
        data modify storage ui: sell_items append from storage ui: items[{components:{"minecraft:custom_data":{can_sell:1b}}}]
        data remove storage ui: sell_items[{Slot:9b}]
        data remove storage ui: sell_items[{Slot:10b}]
        data remove storage ui: sell_items[{Slot:11b}]
        data remove storage ui: sell_items[{Slot:12b}]
        data remove storage ui: sell_items[{Slot:13b}]
        data remove storage ui: sell_items[{Slot:14b}]
        data remove storage ui: sell_items[{Slot:15b}]
        data remove storage ui: sell_items[{Slot:16b}]
    # set slot
        execute if data storage ui: items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/page/set_item {Slot:"9b"}
        execute if data storage ui: items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/page/set_item {Slot:"10b"}
        execute if data storage ui: items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/page/set_item {Slot:"11b"}
        execute if data storage ui: items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/page/set_item {Slot:"12b"}
        execute if data storage ui: items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/page/set_item {Slot:"13b"}
        execute if data storage ui: items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/page/set_item {Slot:"14b"}
        execute if data storage ui: items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/page/set_item {Slot:"15b"}
        execute if data storage ui: items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/page/set_item {Slot:"16b"}
    # return item if not empty
        execute if data storage ui: sell_items[] run data modify storage ui: return_items set from storage ui: sell_items
        execute if data storage ui: return_items[] run function ui:return_item/

# return unrelated items
    data modify storage ui: return_items set from storage ui: items
    data remove storage ui: return_items[{id:"minecraft:black_stained_glass_pane"}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"blank"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"goods"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"forward"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"backward"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"sell"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"buy"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{can_sell:1b}}}]
    execute unless data storage ui: return_items[] run data remove storage ui: return_items
    execute if data storage ui: return_items[] run function ui:return_item/

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

# return items when move page
    execute if score @s ui_page matches 0 run data modify storage ui: return_items set from storage ui: items
    execute if score @s ui_page matches 0 run data remove storage ui: new_items[{components:{"minecraft:custom_data":{can_sell:1b}}}]
    execute unless data storage ui: return_items[] run data remove storage ui: return_items
    data remove storage ui: return_items[{id:"minecraft:black_stained_glass_pane"}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"blank"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"goods"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"forward"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"backward"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"sell"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"buy"}}}}]
    execute if data storage ui: return_items[] run function ui:return_item/

# sell
    execute unless data storage ui: items[{Slot:17b,components:{"minecraft:custom_data":{ui:{type:"sell"}}}}] if data storage ui: new_items[{components:{"minecraft:custom_data":{can_sell:1b}}}] run function ui:shop/sell/

# menu update
    execute store result storage ui: shop_page.page int 1 run scoreboard players get @s shop_page
    execute if score @s ui_page matches 0 on vehicle run function ui:shop/page/init with storage ui: shop_page
    execute if score @s ui_page matches 1 on vehicle run function ui:shop/sell/page/init
    execute on vehicle run data modify entity @s Items append from storage ui: new_items[]

# sfx
    execute if entity @s[tag=playsound_once] on vehicle on vehicle on attacker run playsound ui.button.click master @s ~ ~ ~ 0.5 1.0
    execute if entity @s[tag=playsound_once] run tag @s remove playsound_once

# prevent double update
    execute on vehicle run data modify storage ui: items set from entity @s Items
    data modify entity @s data.items set from storage ui: items

# reset
    tag @s remove tick_once
    data remove storage ui: shop_page
    data remove storage ui: new_items
    data remove storage ui: sell_items