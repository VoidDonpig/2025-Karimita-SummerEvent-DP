#> ui:shop/sell/page/set_item
#
# set page item
#
# @within ui:shop/sell/page/changed

# if item is already in, place item
    $execute if data storage ui: items[{Slot:$(Slot),components:{"minecraft:custom_data":{can_sell:1b}}}] run data modify storage ui: new_items append from storage ui: items[{Slot:$(Slot)}]

# if empty, set item
    $execute unless data storage ui: items[{Slot:$(Slot),components:{"minecraft:custom_data":{can_sell:1b}}}] run data modify storage ui: sell_items[0].Slot set value $(Slot)
    $execute unless data storage ui: items[{Slot:$(Slot),components:{"minecraft:custom_data":{can_sell:1b}}}] run data modify storage ui: new_items append from storage ui: sell_items[0]
    $execute unless data storage ui: items[{Slot:$(Slot),components:{"minecraft:custom_data":{can_sell:1b}}}] run data remove storage ui: sell_items[0]