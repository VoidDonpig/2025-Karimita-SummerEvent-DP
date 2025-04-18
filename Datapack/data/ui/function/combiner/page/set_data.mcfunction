#> ui:combiner/page/set_item

# if already no doing
    $execute if data storage ui: items[{Slot:$(Slot)}] run data modify storage ui: new_items append from storage ui: items[{Slot:$(Slot)}]

# place item to blank
    $execute unless data storage ui: items[{Slot:$(Slot)}] run data modify storage ui: placed_items[0].Slot set value $(Slot)
    $execute unless data storage ui: items[{Slot:$(Slot)}] run data modify storage ui: new_items append from storage ui: placed_items[0]
    $execute unless data storage ui: items[{Slot:$(Slot)}] run data remove storage ui: placed_items[0]