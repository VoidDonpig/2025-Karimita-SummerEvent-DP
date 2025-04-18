#> ui:shop/
#
# shop tick
#
# @within ui:

# once playsound
    tag @s add playsound_once

# set sound
    execute on vehicle run data modify storage ui: shop_items append from entity @s Items[{components:{"minecraft:custom_data":{ui:{type:"blank"}}}}]
    execute on vehicle run data modify storage ui: shop_items append from entity @s Items[{components:{"minecraft:custom_data":{ui:{type:"forward"}}}}]
    execute on vehicle run data modify storage ui: shop_items append from entity @s Items[{components:{"minecraft:custom_data":{ui:{type:"backward"}}}}]
    execute on vehicle run data modify storage ui: shop_items append from entity @s Items[{components:{"minecraft:custom_data":{ui:{type:"sell"}}}}]
    execute on vehicle run data modify storage ui: shop_items append from entity @s Items[{components:{"minecraft:custom_data":{can_sell:1b}}}]
    execute store success storage ui: shop_changed int 1 run data modify entity @s data.shop_items set from storage ui: shop_items
    execute unless data storage ui: {shop_changed:1} run tag @s remove playsound_once

# set data
    execute on vehicle run data modify storage ui: items set from entity @s Items
    execute store success storage ui: changed int 1 run data modify entity @s data.items set from storage ui: items
    execute if data storage ui: {changed:1} run function ui:shop/page/number

# reset
    data remove storage ui: shop_items
    data remove storage ui: shop_changed
    data remove storage ui: items
    data remove storage ui: changed