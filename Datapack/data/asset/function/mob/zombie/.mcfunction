#> asset:mob/zombie/
#
# mob tick
#
# @within mob:tick/tick/tick

# add tag on target
    execute on target run tag @s add target

# leap attack
    # manage timer
        execute if predicate lib:is_on_ground unless score @s ai_timer.1 matches 30.. run scoreboard players add @s ai_timer.1 1
    # caution
        execute if score @s ai_timer.1 matches 30 run function asset:mob/zombie/action/leap_attack/caution
    # keep adding score when charging
        execute if score @s ai_timer.1 matches 30.. run scoreboard players add @s ai_timer.1 1
    # reset score when issues occur
        execute rotated ~ 0 unless block ^ ^ ^1 #lib:not_solid run scoreboard players reset @s ai_timer.1
        execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #lib:not_solid run scoreboard players reset @s ai_timer.1
        execute rotated ~ 0 positioned ~ ~-1 ~ if block ^ ^ ^6 #lib:not_solid positioned ~ ~-2 ~ if block ^ ^ ^6 #lib:not_solid positioned ~ ~-3 ~ if block ^ ^ ^6 #lib:not_solid positioned ~ ~-4 ~ if block ^ ^ ^6 #lib:not_solid run scoreboard players reset @s ai_timer.1
        execute if entity @n[tag=target,distance=..4] run scoreboard players reset @s ai_timer.1
    # run
        execute if score @s ai_timer.1 matches 40 rotated ~ 0 run function asset:mob/zombie/action/leap_attack/
    # reset
        execute if score @s ai_timer.1 matches 60.. run scoreboard players reset @s ai_timer.1

# undead healing
    # manage timer
        execute if score $difficulty_level world matches 1.. run scoreboard players add @s ai_timer.2 1
    # run
        execute if score @s ai_timer.2 matches 200 run function asset:mob/zombie/action/undead_healing/
    # reset
        execute if score @s ai_timer.2 matches 200.. run scoreboard players reset @s ai_timer.2

# curse of zombies
    # manage timer
        execute if score $difficulty_level world matches 2.. unless entity @s[tag=leap_attack.doing] unless score @s ai_timer.3 matches 80.. unless score @s ai_counter.1 matches 1.. run scoreboard players add @s ai_timer.3 1
    # caution
        execute if score @s ai_timer.3 matches 80 run function asset:mob/zombie/action/curse_of_zombies/caution
    # keep adding score when charging
        execute if score @s ai_timer.3 matches 80.. unless entity @s[tag=leap_attack.doing] run scoreboard players add @s ai_timer.3 1
    # run
        execute if score @s ai_timer.3 matches 100 run function asset:mob/zombie/action/curse_of_zombies/
    # add count score
        execute if score $difficulty_level world matches 2 if score @s ai_timer.3 matches 100 run scoreboard players add @s ai_counter.1 100
        execute if score $difficulty_level world matches 3.. if score @s ai_timer.3 matches 100 run scoreboard players add @s ai_counter.1 1
    # reset
        execute if score @s ai_timer.3 matches 100.. run scoreboard players reset @s ai_timer.3

# shredding infection
    # manage timer
        execute if score $difficulty_level world matches 3.. unless entity @s[tag=leap_attack.doing] unless score @s ai_timer.4 matches 70.. if score @s ai_counter.1 matches 1 run scoreboard players add @s ai_timer.4 1
    # caution
        execute if score @s ai_timer.4 matches 70 run function asset:mob/zombie/action/shredding_infection/caution
    # keep adding 
        execute if score @s ai_timer.4 matches 70.. unless entity @s[tag=leap_attack.doing] run scoreboard players add @s ai_timer.4 1
    # run
        execute if score @s ai_timer.4 matches 100 run function asset:mob/zombie/action/shredding_infection/
    # add count score
        execute if score $difficulty_level world matches 3 if score @s ai_timer.4 matches 100 run scoreboard players add @s ai_counter.1 100
        execute if score $difficulty_level world matches 4.. if score @s ai_timer.4 matches 100 run scoreboard players add @s ai_counter.1 1
    # reset
        execute if score @s ai_timer.4 matches 100.. run scoreboard players reset @s ai_timer.4

# carnivorous instinct
    # manage timer
        execute if score $difficulty_level world matches 4.. unless entity @s[tag=leap_attack.doing] if score @s ai_counter.1 matches 2 run scoreboard players add @s ai_timer.5 1
    # run
        execute if score @s ai_timer.5 matches 60 run function asset:mob/zombie/action/carnivorous_instinct/
    # add count score
        execute if score @s ai_timer.5 matches 60 run scoreboard players add @s ai_counter.1 100
    # reset
        execute if score @s ai_timer.5 matches 60.. run scoreboard players reset @s ai_timer.5

# throw axe
    # manage timer
        execute if score $difficulty_level world matches 5.. unless entity @s[tag=leap_attack.doing] unless score @s ai_timer.6 matches 80.. run scoreboard players add @s ai_timer.6 1
    # caution
        execute if score @s ai_timer.6 matches 80 run function asset:mob/zombie/action/throw_axe/caution
    # keep adding score
        execute if score @s ai_timer.6 matches 80.. run scoreboard players add @s ai_timer.6 1
    # run
        execute if score @s ai_timer.6 matches 100 run function asset:mob/zombie/action/throw_axe/
    # reset
        execute if score @s ai_timer.6 matches 100.. run scoreboard players reset @s ai_timer.6

# reset
    # count
        execute if score @s ai_counter.1 matches 100.. run scoreboard players reset @s ai_counter.1
    # target tag
        tag @n[tag=target] remove target