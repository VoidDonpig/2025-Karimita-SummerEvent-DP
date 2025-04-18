#> ui:shop/page/number
#
# itme page
#
# @within ui:shop/

# select page
    tag @s add tick_once
    scoreboard players add @s ui_page 0
    execute if entity @s[tag=tick_once] if score @s ui_page matches 0 run function ui:shop/page/changed
    execute if entity @s[tag=tick_once] if score @s ui_page matches 1 run function ui:shop/sell/page/changed
    execute if entity @s[tag=tick_once] if score @s ui_page matches 12..17 run function ui:shop/buy/multiple/page/changed