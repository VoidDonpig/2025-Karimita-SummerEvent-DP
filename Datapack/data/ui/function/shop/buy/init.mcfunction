#> ui:shop/buy/init
#
# init data
#
# @within ui:shop/page/changed

# get entry
    $data modify storage ui: products set from entity @s data.shop_data[$(page)]
    execute if score @s ui_page matches 2 run function ui:shop/page/get_entry {number:0}
    execute if score @s ui_page matches 3 run function ui:shop/page/get_entry {number:1}
    execute if score @s ui_page matches 4 run function ui:shop/page/get_entry {number:2}
    execute if score @s ui_page matches 5 run function ui:shop/page/get_entry {number:3}
    execute if score @s ui_page matches 6 run function ui:shop/page/get_entry {number:4}
    execute if score @s ui_page matches 7 run function ui:shop/page/get_entry {number:5}
    data modify entity @s data.buy_item.id set from storage ui: entry_data.id

# detect multiple
    function ui:shop/buy/get_stack_size with storage ui: entry_data
    execute if score $stackable temporary matches 1 on vehicle run function ui:shop/buy/multiple/page/init with storage ui: entry_data

# buy check
    execute if score $stackable temporary matches 0 run scoreboard players set $count temporary 1
    execute if score @s ui_page matches 2..7 run function ui:shop/buy/check with entity @s data.buy_item

# reset
    scoreboard players reset $stackable temporary