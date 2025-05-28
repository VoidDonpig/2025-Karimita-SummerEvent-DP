#> asset:mob/ender_dragon/action/phase04
#
# phase 1
#
# @within asset:mob/ender_dragon/action

# movement
    function asset:mob/ender_dragon/base_move_04

# atomspilit
    function asset:mob/ender_dragon/action/atomspilit/

# voidfield trail
    execute if predicate lib:periodic/3 run function asset:mob/ender_dragon/action/voidfield_trail/

# base timer
    scoreboard players add @s ai_timer.1 1
    scoreboard players add @s ai_timer.2 1

# ender flame
    execute if predicate lib:periodic/5 positioned ^ ^2 ^5 as @a[distance=..128,tag=!player.exception] run function asset:mob/ender_dragon/action/ender_flame/

# lightning strike
    # action
        execute if score @s ai_timer.2 matches 200 run tag @s add lightning_strike_charging
    # caution sound
        execute if entity @s[tag=lightning_strike_charging] run function asset:mob/ender_dragon/action/lightning_strike/charging
    # ready
        execute if score @s ai_timer.2 matches 220 run function asset:mob/ender_dragon/action/lightning_strike/ready
    # strike
        execute if score @s ai_timer.2 matches 240 as @e[type=minecraft:marker,tag=asset,tag=lightning_strike] at @s run function asset:mob/ender_dragon/action/lightning_strike/damage
        execute if score @s ai_timer.2 matches 240 run tag @s remove lightning_strike_charging

# dimensional singularity
    execute if score @s ai_timer.1 matches 100 run function asset:mob/ender_dragon/action/dimensional_singularity/

# reset
    scoreboard players reset @s[scores={ai_timer.1=100..}] ai_timer.1
    scoreboard players reset @s[scores={ai_timer.2=240..}] ai_timer.2