#> player:class/assassin/ability/vicacious_ferocity/
#
# assassin leap process
#
# @within player:class/assassin/

# charge
    execute if predicate player:is_sneaking run tag @s add player.vicacious_ferocity.add_sneaking_tag
    tag @s[tag=player.vicacious_ferocity.add_sneaking_tag,scores={vicacious_ferocity_timer=1..}] remove player.vicacious_ferocity.add_sneaking_tag
    execute if predicate player:is_sneaking unless entity @s[tag=player.vicacious_ferocity.sneaking] if predicate asset:weapon/melee/daggers unless score @s vicacious_ferocity_cooltime matches 1.. run function player:class/assassin/ability/vicacious_ferocity/health_check
    execute unless entity @s[tag=player.vicacious_ferocity.add_sneaking_tag] run tag @s remove player.vicacious_ferocity.sneaking
    execute if entity @s[tag=player.vicacious_ferocity.add_sneaking_tag] run tag @s add player.vicacious_ferocity.sneaking
    tag @s[tag=player.vicacious_ferocity.add_sneaking_tag] remove player.vicacious_ferocity.add_sneaking_tag

# timer
    execute if score @s vicacious_ferocity_cooltime matches 1.. run scoreboard players remove @s vicacious_ferocity_cooltime 1
    execute if score @s vicacious_ferocity_timer matches 1.. run scoreboard players remove @s vicacious_ferocity_timer 1
    execute if score @s vicacious_ferocity_cooltime matches ..0 run scoreboard players reset @s vicacious_ferocity_cooltime
    execute if score @s vicacious_ferocity_timer matches ..0 run scoreboard players reset @s vicacious_ferocity_timer

# sfx
    execute if score @s vicacious_ferocity_timer matches 1.. if predicate asset:weapon/melee/daggers run particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0 2 normal