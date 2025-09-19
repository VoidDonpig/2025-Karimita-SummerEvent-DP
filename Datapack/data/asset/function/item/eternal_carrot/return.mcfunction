#> asset:item/eternal_carrot/return
#
# return new item
#
# @within asset:item/eternal_carrot/reset

# get slot
    data modify storage asset: number set from storage asset: Slot[0]
    data remove storage asset: Slot[0]
    execute if data storage asset: number run function asset:item/eternal_carrot/give_item with storage asset: number

# reset
    data remove storage asset: number
    execute unless data storage asset: Slot[] run data remove storage asset: Slot
    execute if data storage asset: Slot[] run function asset:item/eternal_carrot/return