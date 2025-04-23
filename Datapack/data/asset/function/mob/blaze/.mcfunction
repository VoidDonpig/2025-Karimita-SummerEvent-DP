#> asset:mob/blaze/
#
# mob tick
#
# @within mob:tick/tick/tick

# add tag on target
    execute on target run tag @s add target

# blazing flame
    # add score
        execute if score $difficulty_level world matches 1.. run scoreboard players add @s ai_timer.1 1
    # run
        execute if score @s ai_timer.1 matches 10 anchored eyes run function asset:mob/blaze/action/blazing_flame/
    # reset
        scoreboard players reset @s[scores={ai_timer.1=10..}] ai_timer.1

# heat wave
    # add score
        execute if score $difficulty_level world matches 2.. run scoreboard players add @s ai_timer.2 1
    # run
        execute if score @s ai_timer.2 matches 100 run function asset:mob/blaze/action/heat_wave/
    # reset
        scoreboard players reset @s[scores={ai_timer.2=100..}] ai_timer.2

# infernal healing
    # add score
        execute if score $difficulty_level world matches 3.. run scoreboard players add @s ai_timer.3 1
    # run
        execute if score @s ai_timer.3 matches 200 run function asset:mob/blaze/action/infernal_healing/
    # reset
        scoreboard players reset @s[scores={ai_timer.3=200..}] ai_timer.3

# burning lay
    # add score
        execute if score $difficulty_level world matches 4.. run scoreboard players add @s ai_timer.4 1
    # run
        execute if score @s ai_timer.4 matches 80..100 if predicate lib:periodic/2 anchored eyes run function asset:mob/blaze/action/burning_ray/
    # reset
        scoreboard players reset @s[scores={ai_timer.4=100..}] ai_timer.4

# purgatory flare
    # add score
        execute if score $difficulty_level world matches 5.. unless score @s ai_timer.5 matches 360.. run scoreboard players add @s ai_timer.5 1
    # caution
        execute if score @s ai_timer.5 matches 360..400 run function asset:mob/blaze/action/purgatory_flare/caution
    # keep adding score when charging
        execute if score @s ai_timer.5 matches 360.. run scoreboard players add @s ai_timer.5 1
    # run
        execute if score @s ai_timer.5 matches 400 positioned ~ ~0.8 ~ run function asset:mob/blaze/action/purgatory_flare/
    # reset
        scoreboard players reset @s[scores={ai_timer.5=400..}] ai_timer.5


# remove tag
    tag @n[tag=target] remove target