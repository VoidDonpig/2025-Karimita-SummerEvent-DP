#> player:class/assassin/ability/vicacious_ferocity/
#
# assassin leap process
#
# @within player:class/assassin/

# charge
    execute if predicate player:is_sneaking if predicate asset:weapon/melee/daggers unless score @s vicacious_ferocity_cooltime matches 1.. run function player:class/assassin/ability/vicacious_ferocity/health_check

# timer
    execute if score @s vicacious_ferocity_cooltime matches 1.. run scoreboard players remove @s vicacious_ferocity_cooltime 1
    execute if score @s vicacious_ferocity_timer matches 1.. run scoreboard players remove @s vicacious_ferocity_timer 1
    execute if score @s vicacious_ferocity_cooltime matches ..0 run scoreboard players reset @s vicacious_ferocity_cooltime
    execute if score @s vicacious_ferocity_timer matches ..0 run scoreboard players reset @s vicacious_ferocity_timer