#> asset:mob/revenant_priest/action/phase01
#
# phase 01
#
# @within asset:mob/revenant_priest/action/

# ai scores
    scoreboard players add @s ai_timer.1 1
    execute if score @s ai_timer.1 matches 140.. run scoreboard players add @s ai_timer.2 1

# revenant order
    # freeze
        execute if score @s ai_timer.1 matches 100 run function asset:mob/revenant_priest/action/revenant_order/freeze
    # attack
        # timer
            execute if score @s ai_counter.1 matches 1.. run function asset:mob/revenant_priest/action/revenant_order/easy/timer
    # order
        execute if score @s ai_timer.1 matches 140..450 if score @s ai_timer.2 matches 1 run function asset:mob/revenant_priest/action/revenant_order/easy/impel {timer:20}
    # unfreeze
        execute if score @s ai_timer.1 matches 450 run function asset:mob/revenant_priest/action/revenant_order/unfreeze

# reset
    scoreboard players reset @s[scores={ai_timer.1=450..}] ai_timer.2
    scoreboard players reset @s[scores={ai_timer.1=450..}] ai_timer.1
    scoreboard players reset @s[scores={ai_timer.2=40..}] ai_timer.2