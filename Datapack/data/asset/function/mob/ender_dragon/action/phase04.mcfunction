#> asset:mob/ender_dragon/action/phase04
#
# phase 4
#
# @within asset:mob/ender_dragon/action

# movement
    execute unless entity @s[tag=stop_moving] unless entity @s[tag=moving_to_0_0] run function asset:mob/ender_dragon/base_move_04
    execute if entity @s[tag=moving_to_0_0] run function asset:mob/ender_dragon/move_to_0_0

# atomspilit
    execute if predicate lib:periodic/20 run function asset:mob/ender_dragon/action/atomspilit/

# voidfield trail
    execute if predicate lib:periodic/3 run function asset:mob/ender_dragon/action/voidfield_trail/

# base timer
    scoreboard players add @s ai_timer.1 1
    execute if score @s ai_timer.2 matches 1.. run scoreboard players reset @s ai_timer.1

# ender flame
    execute unless score @s ai_counter.1 matches 4 if predicate lib:periodic/30 positioned ^ ^ ^-5 as @a[distance=..128,tag=!player.exception] run function asset:mob/ender_dragon/action/ender_flame/

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
    execute if score @s ai_timer.1 matches 400 run function asset:mob/ender_dragon/action/call_minion/

# ender brainwashing
    execute if score @s ai_timer.1 matches 400 as @e[type=enderman,distance=..128,tag=!special_mob,tag=!dragonic_fanatic] at @s run function asset:mob/ender_dragon/action/ender_brainwashing/

# dimensional singularity
    execute if score @s ai_timer.1 matches 400 run function asset:mob/ender_dragon/action/dimensional_singularity/

# void apocalypse
    execute if score @s ai_timer.1 matches 400 run function asset:mob/ender_dragon/action/void_apocalypse/

# mega impact
    # move to 0 0
        execute if score @s ai_timer.1 matches 400 if score @s ai_counter.1 matches 4 run tag @s add moving_to_0_0
    # add score if reach 0 0
        execute positioned 0 100 0 if entity @s[tag=moving_to_0_0,distance=..4] run scoreboard players add @s ai_timer.2 1
    # manage tag
        execute if score @s ai_timer.2 matches 1 run tag @s add stop_moving
        execute if score @s ai_timer.2 matches 1 run tag @s remove moving_to_0_0
    # keep adding score
        execute if score @s ai_timer.2 matches 1.. run scoreboard players add @s ai_timer.2 1
    # growl
        execute if score @s ai_timer.2 matches 1..60 run playsound entity.ender_dragon.growl hostile @a ~ ~ ~ 16 1 0
        execute if score @s ai_timer.2 matches 1..60 run particle electric_spark ~ ~ ~ 8 8 8 0.8 64 force @a
    # add damage
        execute if score @s ai_timer.2 matches 60 as @a[distance=..256] at @s run function asset:mob/ender_dragon/action/mega_impact/
    # remove tag
        execute if score @s ai_timer.2 matches 120 run tag @s remove stop_moving

# frenzy
    execute if score @s ai_counter.1 matches 4 if predicate lib:y_above_80 run function asset:mob/ender_dragon/action/dragonic_frenzy/

# reset
    scoreboard players reset @s[scores={ai_timer.1=400..}] ai_timer.1
    scoreboard players reset @s[scores={ai_counter.1=4..,ai_timer.2=120..}] ai_counter.1
    scoreboard players reset @s[scores={ai_timer.2=120..}] ai_timer.2