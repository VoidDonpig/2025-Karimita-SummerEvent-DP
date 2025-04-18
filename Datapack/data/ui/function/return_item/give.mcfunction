#> ui:return_item/give

# summon item
    data remove storage ui: give_item.Slot
    execute in world:admin_area run data modify block 0 0 0 Items[0] set from storage ui: give_item
    execute in world:admin_area run loot give @s mine 0 0 0 minecraft:debug_stick

# reset
    data remove storage ui: give_item