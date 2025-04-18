#> ui:class_changer/page/number

# update page
    tag @s add tick_once
    scoreboard players add @s ui_page 0
    execute if entity @s[tag=tick_once] if score @s ui_page matches 0 run function ui:class_changer/page/changed