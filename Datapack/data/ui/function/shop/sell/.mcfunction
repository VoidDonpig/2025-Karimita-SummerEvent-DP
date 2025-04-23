#> ui:shop/sell/
# 
# iteme selling process
#
# @within ui:shop/sell/page/changed

# get sell value
    data modify storage ui: item_data append from storage ui: new_items[{components:{"minecraft:custom_data":{can_sell:1b}}}]
    function ui:shop/sell/value

# add gold
    execute on vehicle on vehicle on attacker run scoreboard players operation @s gold_queue += $total_value temporary

# tellraw
    tellraw @p [{"text":"計"},{"score":{"name":"$total_count","objective":"temporary"}},{"text":"個のアイテムを売却しました！"},{"text":" (",color:white},{"text":"+",color:gold},{"score":{"name":"$total_value","objective":"temporary"},color:gold},{"text":"G","color":"gold"},{"text":")",color:white}]

# sfx
    execute if score $total_value temporary matches 1.. on vehicle on vehicle on attacker run playsound block.note_block.pling master @s ~ ~ ~ 1 2
    execute if score $total_value temporary matches 1.. run tag @s remove playsound_once

# move page
    scoreboard players set @s ui_page 0

# reset
    data remove storage ui: new_items[{components:{"minecraft:custom_data":{can_sell:1b}}}]
    scoreboard players reset $total_value temporary
    scoreboard players reset $total_count temporary