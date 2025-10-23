#> asset:mob/ender_dragon/action/phase03
#
# phase 3
#
# @within asset:mob/ender_dragon/action

# movement
    execute unless entity @s[tag=stop_moving] run function asset:mob/ender_dragon/base_move_03

# atomspilit
    execute if predicate lib:periodic/20 run function asset:mob/ender_dragon/action/atomspilit/

# base timer
    scoreboard players add @s ai_timer.1 1
    execute if score @s ai_timer.2 matches 1.. run scoreboard players reset @s ai_timer.1

# ender flame
    execute unless score @s ai_counter.1 matches 4 if predicate lib:periodic/30 positioned ^ ^ ^-5 as @a[distance=..128,predicate=!player:is_player_exception] run function asset:mob/ender_dragon/action/ender_flame/

# lightning strike
    # action
        execute if score @s ai_timer.1 matches 310 run tag @s add lightning_strike_charging
    # add counter
        scoreboard players add @s[tag=lightning_strike_charging] ai_counter.2 1
    # caution sound
        execute if entity @s[tag=lightning_strike_charging] run function asset:mob/ender_dragon/action/lightning_strike/charging
    # ready
        execute if score @s ai_counter.2 matches 20 run function asset:mob/ender_dragon/action/lightning_strike/ready
    # reset
        scoreboard players reset @s[scores={ai_counter.2=20..}] ai_counter.2

# add ai counter
    execute if score @s ai_timer.1 matches 400 run scoreboard players add @s ai_counter.1 1

# call minion
    execute if score @s ai_timer.1 matches 400 if score @s ai_counter.1 matches 1 run function asset:mob/ender_dragon/action/call_minion/

# ender brainwashing
    execute if score @s ai_timer.1 matches 400 if score @s ai_counter.1 matches 2 as @e[type=enderman,distance=..128,tag=!special_mob,tag=!dragonic_fanatic] at @s run function asset:mob/ender_dragon/action/ender_brainwashing/

# dimensional singularity
    execute if score @s ai_timer.1 matches 400 if score @s ai_counter.1 matches 3 run function asset:mob/ender_dragon/action/dimensional_singularity/

# void apocalypse
    execute if score @s ai_timer.1 matches 400 run function asset:mob/ender_dragon/action/void_apocalypse/

# spawning egg
    # move to 0 0
        execute if score @s ai_timer.1 matches 400 if score @s ai_counter.1 matches 4 run function asset:mob/ender_dragon/move_to_0_0
    # add score if reach 0 0
        execute if score @s ai_timer.1 matches 400 if score @s ai_counter.1 matches 4 run scoreboard players add @s ai_timer.2 1
    # manage tag
        execute if score @s ai_timer.2 matches 1 run tag @s add stop_moving
    # keep adding score
        execute if score @s ai_timer.2 matches 1.. run scoreboard players add @s ai_timer.2 1
    # growl
        execute if score @s ai_timer.2 matches 1..60 run playsound entity.ender_dragon.growl hostile @a[distance=..128] ~ ~ ~ 16 1 0
        execute if score @s ai_timer.2 matches 1..60 run particle electric_spark ~ ~ ~ 8 8 8 0.8 64 force
    # add damage
        execute if score @s ai_timer.2 matches 60 as @a[distance=..256] at @s run function asset:mob/ender_dragon/action/mega_impact/
    # particle line
        execute if score @s ai_timer.2 matches 1.. positioned ~3.0 ~ ~ run function asset:mob/ender_dragon/action/spawning_egg/particle_line
        execute if score @s ai_timer.2 matches 1.. positioned ~-3.0 ~ ~ run function asset:mob/ender_dragon/action/spawning_egg/particle_line
        execute if score @s ai_timer.2 matches 1.. positioned ~ ~ ~3.0 run function asset:mob/ender_dragon/action/spawning_egg/particle_line
        execute if score @s ai_timer.2 matches 1.. positioned ~ ~ ~-3.0 run function asset:mob/ender_dragon/action/spawning_egg/particle_line
    # add damage
        execute if score @s ai_timer.2 matches 100 positioned 0 255 0 positioned over world_surface run function asset:mob/ender_dragon/action/spawning_egg/lay
    # remove tag
        execute if score @s ai_timer.2 matches 120 run tag @s remove stop_moving
        
# reset
    scoreboard players reset @s[scores={ai_timer.1=400..}] ai_timer.1
    scoreboard players reset @s[scores={ai_counter.1=4..,ai_timer.2=120..}] ai_counter.1
    scoreboard players reset @s[scores={ai_timer.2=120..}] ai_timer.2