#> asset:mob/ender_dragon/action/phase01
#
# phase 1
#
# @within asset:mob/ender_dragon/action

# movement
    execute unless entity @s[tag=stop_moving] run function asset:mob/ender_dragon/base_move_01

# atomspilit
    execute if predicate lib:periodic/20 run function asset:mob/ender_dragon/action/atomspilit/

# base timer
    scoreboard players add @s ai_timer.1 1

# ender flame
    execute if predicate lib:periodic/40 positioned ^ ^ ^-5 as @a[distance=..128,tag=!player.exception] run function asset:mob/ender_dragon/action/ender_flame/

# lightning strike
    # action
        execute if score @s ai_timer.1 matches 310 run tag @s add lightning_strike_charging
    # caution sound
        execute if entity @s[tag=lightning_strike_charging] run function asset:mob/ender_dragon/action/lightning_strike/charging
    # ready
        execute if score @s ai_timer.1 matches 330 run function asset:mob/ender_dragon/action/lightning_strike/ready
    # strike
        execute if score @s ai_timer.1 matches 360 as @e[type=minecraft:marker,tag=asset,tag=lightning_strike] at @s run function asset:mob/ender_dragon/action/lightning_strike/damage
        execute if score @s ai_timer.1 matches 360 run tag @s remove lightning_strike_charging

# add ai counter
    execute if score @s ai_timer.1 matches 400 run scoreboard players add @s ai_counter.1 1

# call minion
    execute if score @s ai_timer.1 matches 400 if score @s ai_counter.1 matches 3 run function asset:mob/ender_dragon/action/call_minion/

# reset
    scoreboard players reset @s[scores={ai_timer.1=400..}] ai_timer.1
    scoreboard players reset @s[scores={ai_counter.1=3..}] ai_counter.1