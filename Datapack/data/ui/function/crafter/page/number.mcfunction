#> ui:crafter/page/number
#
# look up page
#
# @within ui:crafter/

# update page
    tag @s add tick_once
    scoreboard players add @s ui_page 0
    execute if entity @s[tag=tick_once] if score @s ui_page matches 0 run function ui:crafter/page/changed
    execute if entity @s[tag=tick_once] if score @s ui_page matches 1 run function ui:crafter/page/weapon/changed
    execute if entity @s[tag=tick_once] if score @s ui_page matches 100..106 run function ui:crafter/page/weapon/craft/changed