#> asset:mob/revenant_priest/action/phase01
#
# phase 01
#
# @within asset:mob/revenant_priest/action/

# manage timer
    scoreboard players add @s ai_timer.1 1
    execute if score @s ai_timer.1 matches 600.. run scoreboard players add @s ai_timer.2 1

# teleport
    execute unless score @s ai_timer.1 matches 600.. if predicate {condition:"entity_properties",entity:this,predicate:{periodic_tick:200}} run function asset:mob/revenant_priest/action/teleport/

# rotten bullet
    execute unless score @s ai_timer.1 matches 600.. if predicate {condition:"entity_properties",entity:this,predicate:{periodic_tick:20}} run function asset:mob/revenant_priest/action/rotten_bullet/

# revenant order
    # freeze
        execute if score @s ai_timer.1 matches 600 run function asset:mob/revenant_priest/action/revenant_order/freeze
    # attack
        # timer
            execute if score @s ai_counter.1 matches 1.. run function asset:mob/revenant_priest/action/revenant_order/easy/timer
    # order
        execute if score @s ai_timer.1 matches 640..949 if score @s ai_timer.2 matches 1 run function asset:mob/revenant_priest/action/revenant_order/easy/impel {timer:20}
    # unfreeze
        execute if score @s ai_timer.1 matches 950 run function asset:mob/revenant_priest/action/revenant_order/unfreeze

# reset
    scoreboard players reset @s[scores={ai_timer.1=950..}] ai_timer.2
    scoreboard players reset @s[scores={ai_timer.1=950..}] ai_timer.1
    scoreboard players reset @s[scores={ai_timer.2=40..}] ai_timer.2