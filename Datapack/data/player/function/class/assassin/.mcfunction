#> player:class/assassin/
#
# assassin tick
#
# @within player:tick

# bloodlust
    execute if score @s bloodlust_timer matches 1.. run function player:class/assassin/ability/bloodlust/active

# vicacious ferocity
    function player:class/assassin/ability/vicacious_ferocity/

# shadow step
    execute if predicate lib:is_on_ground if predicate player:team/class.assassin run scoreboard players set @s shadow_step_unavailable_timer 3
    # reset tag
        execute if predicate lib:is_on_ground run tag @s[tag=player.assassin.shadow_step.doing] remove player.assassin.shadow_step.doing

# cooltime
    execute if score @s shadow_step_unavailable_timer matches 1.. run scoreboard players remove @s shadow_step_unavailable_timer 1
    execute if score @s shadow_step_unavailable_timer matches 0 run scoreboard players reset @s shadow_step_unavailable_timer
    execute if score @s shadow_step_cooltime matches 1.. run scoreboard players remove @s shadow_step_cooltime 1
    execute if score @s shadow_step_cooltime matches 0 run scoreboard players reset @s shadow_step_cooltime