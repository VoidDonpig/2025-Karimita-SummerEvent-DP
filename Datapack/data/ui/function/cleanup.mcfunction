#> ui:cleanup
#
# cleanup ui
#
# @within ui:close

# return item
    execute on passengers run data modify storage ui: return_items set from entity @s Items
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{UI:{TYPE:"backward"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"forward"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"goods"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"blank"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"none"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"sell"}}}}]
    data remove storage ui: return_items[{components:{"minecraft:custom_data":{ui:{type:"buy"}}}}]
    execute unless data storage ui: return_items[] run data remove storage ui: return_items
    execute if data storage ui: return_items[] on passengers on passengers run function ui:return_item/

# kill ui entity
    execute if score @s player.id = @p player.id run scoreboard players set @s autokill_timer 3