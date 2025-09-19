#> asset:item/eternal_carrot/get_slot
#
# get slot
#
# @within asset:item/eternal_carrot/reset

# get slot
    execute if data storage asset: Inventory[0].components."minecraft:custom_data"{custom_item_id:"eternal_carrot_eaten"} store result score $slot temporary run data get storage asset: Inventory[0].Slot
    execute if score $slot temporary matches 0.. store result storage asset: __temp__.slot int 1 run scoreboard players get $slot temporary
    execute if data storage asset: __temp__.slot run data modify storage asset: Slot append from storage asset: __temp__

    data remove storage asset: Inventory[0]
    data remove storage asset: __temp__
    scoreboard players reset $slot temporary

# reset
    execute unless data storage asset: Inventory[] run data remove storage asset: Inventory
    execute if data storage asset: Inventory[] run function asset:item/eternal_carrot/get_slot