#> ui:close/close_detector/remove
#
# remove close detector
#
# @within ui:close

# remove component
    item replace block 0 0 0 container.0 from entity @s armor.head
    data remove block 0 0 0 Items[{Slot:0b}].components.minecraft:custom_data.ui
    loot replace entity @s armor.head mine 0 0 0 minecraft:debug_stick