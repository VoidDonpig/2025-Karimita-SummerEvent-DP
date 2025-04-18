#> asset:item/artemis_armor/damage_decrease
#
# damage decrease
#
# @within player:trigger/shot_arrow/

# set data
    execute store result entity @s damage float 0.6 run data get entity @s damage
    
    tag @s add already_artemis_armor_arrow_damage_decrease