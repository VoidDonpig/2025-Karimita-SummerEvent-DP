#> ui:combiner/combine/check

# init
    tag @s add fail

# get item
    data modify storage ui: target_item set from storage ui: items[{Slot:10b}]
    data remove storage ui: target_item.Slot

# check
    execute if data storage ui: items[{Slot:16b,components:{"minecraft:custom_data":{custom_item_id:"mixtura"}}}] run function ui:combiner/combine/recipe/mixtura/match
    execute if data storage ui: items[{Slot:16b,components:{"minecraft:custom_data":{custom_item_id:"blessing_of_turtle"}}}] run function ui:combiner/combine/recipe/blessing_of_turtle/match
    execute if data storage ui: items[{Slot:16b,components:{"minecraft:custom_data":{custom_item_id:"miner_soul"}}}] run function ui:combiner/combine/recipe/miner_soul/match
    execute if data storage ui: items[{Slot:16b,components:{"minecraft:custom_data":{custom_item_id:"ultra_cotem"}}}] run function ui:combiner/combine/recipe/ultra_cotem/match
    execute if data storage ui: items[{Slot:16b,components:{"minecraft:custom_data":{custom_item_id:"sacred_rune"}}}] run function ui:combiner/combine/recipe/sacred_rune/match

# fail
    execute if entity @s[tag=fail] as @p at @s run function ui:combiner/combine/fail

# reset
    tag @s remove fail
    data remove storage ui: target_item