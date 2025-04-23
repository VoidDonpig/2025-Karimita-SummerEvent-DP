#> asset:mob/wither_skeleton/
#
# action when have target
#
# @within mob:tick/tick/tick

# tag on target
    execute on target run tag @s add target

# mode change
    # melee
        # add tag
            execute if entity @n[type=#lib:all,tag=target,distance=..4] run tag @s add mode.melee
        # remove old tag
            execute if entity @n[type=#lib:all,tag=target,distance=..4] run tag @s remove mode.ranged
    # ranged
        # add tag
            execute if entity @n[type=#lib:all,tag=target,distance=5..] run tag @s add mode.ranged
        # remove old tag
            execute if entity @n[type=#lib:all,tag=target,distance=5..] run tag @s remove mode.melee

# swap weapon
    function asset:mob/wither_skeleton/action/swap_weapon/check

# leap attack
    # manage timer
        execute if predicate lib:is_on_ground unless entity @s[tag=back_step.doing] if entity @s[tag=mode.ranged] unless score @s ai_timer.6 matches 30.. run scoreboard players add @s ai_timer.6 1
    # caution
        execute if score @s ai_timer.6 matches 30 run function asset:mob/wither_skeleton/action/leap_attack/caution
    # keep adding score when charging
        execute if score @s ai_timer.6 matches 30.. run scoreboard players add @s ai_timer.6 1
    # reset score when issues occur
        execute rotated ~ 0 unless block ^ ^ ^1 #lib:not_solid run scoreboard players reset @s ai_timer.6
        execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #lib:not_solid run scoreboard players reset @s ai_timer.6
        execute rotated ~ 0 positioned ~ ~-1 ~ if block ^ ^ ^6 #lib:not_solid positioned ~ ~-2 ~ if block ^ ^ ^6 #lib:not_solid positioned ~ ~-3 ~ if block ^ ^ ^6 #lib:not_solid positioned ~ ~-4 ~ if block ^ ^ ^6 #lib:not_solid run scoreboard players reset @s ai_timer.6
        execute if entity @n[tag=target,distance=..4] run scoreboard players reset @s ai_timer.6
    # run
        execute if score @s ai_timer.6 matches 40 rotated ~ 0 run function asset:mob/wither_skeleton/action/leap_attack/
    # reset
        execute if score @s ai_timer.6 matches 60.. run scoreboard players reset @s ai_timer.6

# back step
    # manage timer
        execute if predicate lib:is_on_ground unless entity @s[tag=leap_attack.doing] if entity @s[tag=mode.melee] unless score @s ai_timer.7 matches 30.. run scoreboard players add @s ai_timer.7 1
    # caution
        execute if score @s ai_timer.7 matches 30 run function asset:mob/wither_skeleton/action/back_step/caution
    # keep adding score when charging
        execute if score @s ai_timer.7 matches 30.. run scoreboard players add @s ai_timer.7 1
    # reset score when issues occur
        execute rotated ~ 0 unless block ^ ^ ^-1 #lib:not_solid run scoreboard players reset @s ai_timer.7
        execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^-1 #lib:not_solid run scoreboard players reset @s ai_timer.7
        execute rotated ~ 0 positioned ~ ~-1 ~ if block ^ ^ ^-6 #lib:not_solid positioned ~ ~-2 ~ if block ^ ^ ^-6 #lib:not_solid positioned ~ ~-3 ~ if block ^ ^ ^-6 #lib:not_solid positioned ~ ~-4 ~ if block ^ ^ ^-6 #lib:not_solid run scoreboard players reset @s ai_timer.7
        execute if entity @n[tag=target,distance=4..] run scoreboard players reset @s ai_timer.7
    # run
        execute if score @s ai_timer.7 matches 40 rotated ~ 0 run function asset:mob/wither_skeleton/action/back_step/
    # reset
        execute if score @s ai_timer.7 matches 60.. run scoreboard players reset @s ai_timer.7

# rapid fire
    # add score
        execute if score $difficulty_level world matches 1.. unless entity @s[tag=leap_attack.doing] unless entity @s[tag=back_step.doing] if entity @s[tag=mode.ranged] run scoreboard players add @s ai_timer.1 1
    # run
        execute if score @s ai_timer.1 matches 20 facing entity @n[tag=target] feet anchored eyes positioned ^ ^ ^ run function asset:mob/wither_skeleton/action/rapid_fire/
    # reset score
        execute if score @s ai_timer.1 matches 20.. run scoreboard players reset @s ai_timer.1

# calcium toughness
    # add score
        execute if score $difficulty_level world matches 2.. unless entity @s[tag=leap_attack.doing] unless entity @s[tag=back_step.doing] unless score @s ai_timer.2 matches 2.. if entity @s[tag=mode.melee] run scoreboard players add @s ai_timer.2 1
    # run
        execute if score @s ai_timer.2 matches 1 run function asset:mob/wither_skeleton/action/calcium_toughness/

# disgusting worm
    # add score
        execute if score $difficulty_level world matches 3.. unless entity @s[tag=leap_attack.doing] unless entity @s[tag=back_step.doing] if entity @s[tag=mode.ranged] run scoreboard players add @s ai_timer.3 1
    # run
        execute if score @s ai_timer.3 matches 200 facing entity @n[tag=target] feet anchored eyes positioned ^ ^ ^ run function asset:mob/wither_skeleton/action/disgusting_worm/
    # reset score
        execute if score @s ai_timer.3 matches 200.. run scoreboard players reset @s ai_timer.3

# skull shot
    # add score
        execute if score $difficulty_level world matches 4.. if entity @s[tag=mode.ranged] unless score @s ai_timer.4 matches 80.. run scoreboard players add @s ai_timer.4 1
    # caution
        execute if score @s ai_timer.4 matches 80 run function asset:mob/wither_skeleton/action/skull_shot/caution
    # keep adding score
        execute if score @s ai_timer.4 matches 80.. run scoreboard players add @s ai_timer.4 1
    # run
        execute if score @s ai_timer.4 matches 100 run function asset:mob/wither_skeleton/action/skull_shot/
    # reset score
        execute if score @s ai_timer.4 matches 100.. run scoreboard players reset @s ai_timer.4

# curse of deossification
    # add score
        execute if score $difficulty_level world matches 5 unless entity @s[tag=leap_attack.doing] unless entity @s[tag=back_step.doing] if entity @s[tag=mode.melee] unless score @s ai_timer.5 matches 60.. run scoreboard players add @s ai_timer.5 1
    # caution
        execute if score @s ai_timer.5 matches 60 run function asset:mob/wither_skeleton/action/curse_of_deossification/caution
    # keep adding score
        execute if score @s ai_timer.5 matches 60.. run scoreboard players add @s ai_timer.5 1
    # run
        execute if score @s ai_timer.5 matches 80 run function asset:mob/wither_skeleton/action/curse_of_deossification/
    # reset score
        execute if score @s ai_timer.5 matches 80.. run scoreboard players reset @s ai_timer.5

# remove tag
    tag @n[tag=target] remove target