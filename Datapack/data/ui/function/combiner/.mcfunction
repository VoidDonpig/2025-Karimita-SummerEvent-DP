#> ui:combiner/

# UI's data→storage→marker's data
    execute on vehicle run data modify storage ui: items set from entity @s Items
    execute store success storage ui: changed int 1 run data modify entity @s data.items set from storage ui: items
    execute if data storage ui: {changed:1} run function ui:combiner/page/number

# reset
    data remove storage ui: items
    data remove storage ui: changed