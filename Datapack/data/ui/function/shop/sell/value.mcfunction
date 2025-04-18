#> ui:shop/sell/value
# 売価の取得

# $value*$count = $total_value
    execute store result score $count temporary run data get storage ui: item_data[0].count
    execute store result score $value temporary run data get storage ui: item_data[0].components.minecraft:custom_data.value
    scoreboard players operation $value temporary *= $count temporary
    scoreboard players operation $total_value temporary += $value temporary
    scoreboard players operation $total_count temporary += $count temporary
    scoreboard players reset $count temporary
    scoreboard players reset $value temporary


# 売却するアイテムが無くなるまで再帰
    data remove storage ui: item_data[0]
    execute unless data storage ui: item_data[] run data remove storage ui: item_data
    execute if data storage ui: item_data[] run function ui:shop/sell/value