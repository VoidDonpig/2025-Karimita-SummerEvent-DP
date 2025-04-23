#> ui:shop/buy/check
#
# check purchase process
#
# @context item purchase

# get buying item data
    $execute in world:admin_area run loot replace block 0 0 0 container.0 loot asset:item/$(id)
    execute in world:admin_area run data modify storage ui: give_item set from block 0 0 0 Items[{Slot:0b}]

# whether can buy the item
    execute store result score $price temporary run data get storage ui: give_item.components.minecraft:custom_data.price
    scoreboard players operation $price temporary *= $count temporary
    execute on vehicle on vehicle on attacker run scoreboard players operation $player_gold temporary = @s gold
    execute if score $price temporary <= $player_gold temporary run function ui:shop/buy/
    execute unless score $price temporary <= $player_gold temporary run data remove storage ui: give_item

# playsound
    execute unless score $price temporary <= $player_gold temporary on vehicle on vehicle on attacker run playsound block.note_block.bass master @s ~ ~ ~ 1 1
    execute unless score $price temporary <= $player_gold temporary run tag @s remove playsound_once

# set page
    execute if score @s ui_page matches 2..7 run scoreboard players set @s ui_page 0

# reset
    data remove storage ui: buy_item
    scoreboard players reset $count temporary
    scoreboard players reset $price temporary
    scoreboard players reset $player_gold temporary