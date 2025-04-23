#> asset:mob/wither/action/phase01
#
# boss phase 1
#
# @within asset:mob/wither/action/

# move
    execute if entity @s[tag=!stop_moving,tag=!charging] run function asset:mob/wither/base_move_1

# set phase
    execute unless score @s ai_counter.1 matches 1 run function asset:mob/wither/action/reset
    execute unless score @s ai_counter.1 matches -2147483648..2147483647 run scoreboard players add @s ai_counter.1 1

# ai scores
    scoreboard players add @s ai_timer.1 1
    scoreboard players add @s ai_timer.2 1
    scoreboard players add @s ai_timer.3 1
    scoreboard players add @s ai_timer.4 1

# charge
    # roll
        execute if score @s ai_timer.1 matches 1 run function asset:mob/wither/action/charge/roll
    # move
        execute if entity @s[tag=charging,tag=!stop_moving] run function asset:mob/wither/action/charge/

# rapid wither skull
    execute if score @s ai_timer.2 matches 1..299 if predicate lib:periodic/20 run function asset:mob/wither/action/rapid_skull_shot/
    execute if score @s ai_timer.2 matches 300 run tag @s add stop_moving
    execute if score @s ai_timer.2 matches 300..400 if predicate lib:periodic/5 run function asset:mob/wither/action/rapid_skull_shot/
    execute if score @s ai_timer.2 matches 400 run tag @s remove stop_moving

# wither frenzy
    execute if score @s ai_timer.2 matches 400 run function asset:mob/wither/action/wither_frenzy/

# summon minion
    execute if score @s ai_timer.2 matches 400 run function asset:mob/wither/action/summon_minion/

# wither tnt
    execute if score @s ai_timer.3 matches 100 run function asset:mob/wither/action/wither_tnt/

# withered aura
    execute if score @s ai_timer.4 matches 40 run function asset:mob/wither/action/withered_aura/

# reset
    execute if score @s ai_timer.1 matches 80.. run scoreboard players reset @s ai_timer.1
    execute if score @s ai_timer.2 matches 400.. run scoreboard players reset @s ai_timer.2
    execute if score @s ai_timer.3 matches 100.. run scoreboard players reset @s ai_timer.3
    execute if score @s ai_timer.4 matches 40.. run scoreboard players reset @s ai_timer.4