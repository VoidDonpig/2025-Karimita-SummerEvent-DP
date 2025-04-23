#> ui:shop/buy/multiple/page/changed
#
# changed process
#
# @within ui:shop/changed

# 不要アイテムのclear
    clear @a[tag=using_ui] black_stained_glass_pane
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"none"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"goods"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"blank"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"forward"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"backward"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"sell"}}]
    clear @a[tag=using_ui] *[custom_data~{ui:{type:"buy"}}]

# 関係ないアイテムを返却
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

# countを変更する
    execute unless data storage ui: items[{Slot:11b,components:{"minecraft:custom_data":{ui:{type:"blank"}}},count:1}] run scoreboard players set $count temporary 1
    execute unless data storage ui: items[{Slot:12b,components:{"minecraft:custom_data":{ui:{type:"blank"}}},count:5}] run scoreboard players set $count temporary 5
    execute unless data storage ui: items[{Slot:13b,components:{"minecraft:custom_data":{ui:{type:"blank"}}},count:10}] run scoreboard players set $count temporary 10
    execute unless data storage ui: items[{Slot:14b,components:{"minecraft:custom_data":{ui:{type:"blank"}}},count:32}] run scoreboard players set $count temporary 32
    execute unless data storage ui: items[{Slot:15b,components:{"minecraft:custom_data":{ui:{type:"blank"}}},count:64}] run scoreboard players set $count temporary 64

# 購入する
    data modify storage ui: buy_item set from entity @s data.buy_item
    execute if score $count temporary matches 1.. run function ui:shop/buy/check with storage ui: buy_item

# ページを移動する
    execute unless data storage ui: items[{Slot:0b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:1b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:2b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:3b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:4b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:5b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:6b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:7b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0
    execute unless data storage ui: items[{Slot:8b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] run scoreboard players set @s ui_page 0

# メニュー内容更新
    execute store result storage ui: shop_page.page int 1 run scoreboard players get @s shop_page
    execute if score @s ui_page matches 0 on vehicle run function ui:shop/page/init with storage ui: shop_page
    execute if score @s ui_page matches 12..17 on vehicle run function ui:shop/buy/multiple/page/init with storage ui: entry_data

# 効果音
    execute unless data storage ui: items[{Slot:10b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] if entity @s[tag=playsound_once] on vehicle on vehicle on attacker run playsound ui.button.click master @s ~ ~ ~ 0.1 1.7
    execute unless data storage ui: items[{Slot:10b,components:{"minecraft:custom_data":{ui:{type:"blank"}}}}] if entity @s[tag=playsound_once] run tag @s remove playsound_once
    execute if entity @s[tag=playsound_once] on vehicle on vehicle on attacker run playsound ui.button.click master @s ~ ~ ~ 0.1 1.9
    execute if entity @s[tag=playsound_once] run tag @s remove playsound_once

# 二重更新防止
    execute on vehicle run data modify storage ui: items set from entity @s Items
    data modify entity @s data.items set from storage ui: items

# リセット
    tag @s remove tick_once
    scoreboard players reset $count temporary
    data remove storage ui: buy_item
    data remove storage ui: shop_page