#> ui:return_item/
#
# return item
#
# @context ui

# return item
    data modify storage ui: give_item set from storage ui: return_items[0]
    execute if data storage ui: give_item{count:0b} run data remove storage ui: give_item
    data remove storage ui: return_items[0]
    execute if data storage ui: give_item on vehicle on vehicle on attacker run function ui:return_item/give

# repeat until end
    execute unless data storage ui: return_items[] run data remove storage ui: return_items
    execute if data storage ui: return_items[] run function ui:return_item/