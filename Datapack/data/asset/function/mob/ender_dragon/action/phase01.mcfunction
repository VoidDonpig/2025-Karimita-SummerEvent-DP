#> asset:mob/ender_dragon/action/phase01
#
# phase 1
#
# @within asset:mob/ender_dragon/action

# movement
    execute unless entity @s[tag=stop_moving] run function asset:mob/ender_dragon/base_move_01

# base timer
    scoreboard players add @s ai_timer.1 1

# ender flame
    execute if predicate lib:periodic/20 positioned ^ ^ ^-5 as @a[distance=..128,tag=!player.exception] run function asset:mob/ender_dragon/action/ender_flame/

# lightning strike
    # action
        execute if score @s ai_timer.1 matches 200 run tag @s add lightning_strike_charging
    # caution sound
        execute if entity @s[tag=lightning_strike_charging] run function asset:mob/ender_dragon/action/lightning_strike/charging
    # ready
        execute if score @s ai_timer.1 matches 220 run function asset:mob/ender_dragon/action/lightning_strike/ready
    # strike
        execute if score @s ai_timer.1 matches 240 as @e[type=minecraft:marker,tag=asset,tag=lightning_strike] at @s run function asset:mob/ender_dragon/action/lightning_strike/damage
        execute if score @s ai_timer.1 matches 240 run tag @s remove lightning_strike_charging

# call minion
    execute if score @s ai_timer.1 matches 280 run function asset:mob/ender_dragon/action/call_minion/

# reset
    scoreboard players reset @s[scores={ai_timer.1=280..}] ai_timer.1