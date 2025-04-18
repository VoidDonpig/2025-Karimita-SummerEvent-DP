#> ui:combiner/page/changed

# clear item
    clear @a[tag=using_ui] *[minecraft:custom_data~{ui:{type:"none"}}]
    clear @a[tag=using_ui] *[minecraft:custom_data~{ui:{type:"blank"}}]

# refine item data
    data modify storage ui: placed_items append from storage ui: items[]
    data remove storage ui: placed_items[{Slot:10b}]
    data remove storage ui: placed_items[{Slot:16b}]
    execute if data storage ui: items[{Slot:10b}] run function ui:combiner/page/set_data {Slot:"10b"}
    execute if data storage ui: items[{Slot:16b}] run function ui:combiner/page/set_data {Slot:"16b"}

# return unrelated item
    data modify storage ui: return_items set from storage ui: items
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"blank"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"none"}}}}]
    data remove storage ui: return_items[{Slot:10b}]
    data remove storage ui: return_items[{Slot:16b}]
    execute unless data storage ui: return_items[] run data remove storage ui: return_items
    execute if data storage ui: return_items[] run function ui:return_item/

# recipe check
    execute if data storage ui: items[{Slot:10b}] if data storage ui: items[{Slot:16b}] unless data storage ui: items[{Slot:13b}] on vehicle run function ui:combiner/combine/check

# update menu
    execute if score @s ui_page matches 0 on vehicle run function ui:combiner/page/init
    execute on vehicle run data modify entity @s Items append from storage ui: new_items[]

# sound
    execute if entity @s[tag=tick_once] run playsound minecraft:ui.button.click master @p ~ ~ ~ 0.2 1.0 0.0

# prevent twise update
    execute on vehicle run data modify storage ui: items set from entity @s Items
    data modify entity @s data.items set from storage ui: items

# reset
    tag @s remove tick_once
    data remove storage ui: new_items
    data remove storage ui: placed_items