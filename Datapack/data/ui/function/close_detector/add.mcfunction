#> ui:close_detector/add#> ui:close_detector/add

# add component
    item replace block 0 0 0 container.0 from entity @s armor.head
    data modify block 0 0 0 Items[{Slot:0b}].components.minecraft:custom_data.ui.close_detector set value 1b
    loot replace entity @s armor.head 1 mine 0 0 0 minecraft:debug_stick