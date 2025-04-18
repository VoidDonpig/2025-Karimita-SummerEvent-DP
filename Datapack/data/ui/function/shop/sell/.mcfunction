#> ui:shop/sell/
# アイテム売却処理

# スロット内のアイテムの売価を取得
    data modify storage ui: item_data append from storage ui: new_items[{components:{"minecraft:custom_data":{can_sell:1b}}}]
    function ui:shop/sell/value

# プレイヤーのgoldに売価を追加
    execute on vehicle on vehicle on attacker run scoreboard players operation @s gold += $total_value temporary

# 売却情報の表示
    tellraw @p [{"text":"計"},{"score":{"name":"$total_count","objective":"temporary"}},{"text":"個のアイテムを売却しました！"},{"text":" (",color:white},{"text":"+",color:gold},{"score":{"name":"$total_value","objective":"temporary"},color:gold},{"text":"G","color":"gold"},{"text":")",color:white}]

# 演出
    execute if score $total_value temporary matches 1.. on vehicle on vehicle on attacker run playsound block.note_block.pling master @s ~ ~ ~ 1 2
    execute if score $total_value temporary matches 1.. run tag @s remove playsound_once

# ページを移動する
    scoreboard players set @s ui_page 0

# リセット
    data remove storage ui: new_items[{components:{"minecraft:custom_data":{can_sell:1b}}}]
    scoreboard players reset $total_value temporary
    scoreboard players reset $total_count temporary