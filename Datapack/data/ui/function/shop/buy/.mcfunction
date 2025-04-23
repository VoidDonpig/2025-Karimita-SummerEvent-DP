#> ui:shop/buy/
#
# purchase process
#
# @context item purchase ui


# message
    execute on vehicle on vehicle on attacker run tellraw @s [{nbt:"give_item.components.\"minecraft:item_name\"",storage:"ui:",interpret:true}," ",{text:"を購入しました！",color:"green"}]

# give item
    execute store result storage ui: give_item.count byte 1 run scoreboard players get $count temporary
    execute on vehicle on vehicle on attacker run function ui:return_item/give

# pay money
    execute on vehicle on vehicle on attacker run scoreboard players operation @s gold -= $price temporary

# playsound
    execute on vehicle on vehicle on attacker run playsound block.note_block.pling master @s ~ ~ ~ 1 2
    tag @s remove playsound_once