#> player:trigger/rclicked/
#
# trigger rclicked
#
# @within player:tick

# items
    execute unless items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{type:"shortbow"}] run function player:trigger/rclicked/run with entity @s SelectedItem.components."minecraft:custom_data"

# shortbow
    execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{type:"shortbow"}] unless score @s shortbow_cooltime matches 1.. anchored eyes positioned ^ ^ ^ run function player:trigger/rclicked/shortbow with entity @s SelectedItem.components."minecraft:custom_data"