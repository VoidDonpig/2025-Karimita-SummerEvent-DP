#> asset:mob/ender_dragon/action/phase_special_action/phase02
#
# phase 2 special action
#
# @within asset:mob/ender_dragon/action/phase02

# reset
    execute unless score @s ai_counter.1 matches 1.. run scoreboard players reset @s ai_counter.1
    execute unless score @s ai_counter.1 matches 1.. run scoreboard players reset @s ai_timer.1

# dialogue
    execute unless score @s ai_counter.1 matches 1.. run scoreboard players add @s dialogue_timer.1 1
    execute if score @s dialogue_timer.1 matches 1 run tellraw @a [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "少しは手慣れのようだな。","color": "red"}]
    execute if score @s dialogue_timer.1 matches 40 run tellraw @a [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "だが、我には届かぬ。","color": "red"}]
    execute if score @s dialogue_timer.1 matches 100 run tellraw @a [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "死ぬが良い。","color": "red"}]
    # done
        execute if score @s dialogue_timer.1 matches 100 run scoreboard players add @s ai_counter.1 1
        execute if score @s dialogue_timer.1 matches 100 run scoreboard players reset @s dialogue_timer.1

# special attack timer
    execute if score @s ai_counter.1 matches 1 run scoreboard players add @s ai_timer.1 1

# movement
    execute positioned 0 100 0 unless entity @s[tag=moving_to_0_0,distance=..4] run tag @s add moving_to_0_0
    execute if entity @s[tag=moving_to_0_0] run function asset:mob/ender_dragon/move_to_0_0
    tag @s[tag=moving_to_0_0] remove moving_to_0_0

# summon ender army
    execute if score @s ai_timer.1 matches 1 run function asset:mob/ender_dragon/action/summon_ender_army/

# dimensional slash
    # summon
        execute if score @s ai_timer.1 matches 160 run function asset:mob/ender_dragon/action/dimensional_slash/summon
    # charging
        execute if score @s ai_timer.1 matches 1..200 run function asset:mob/ender_dragon/action/dimensional_slash/charging

# reset
    execute if score @s ai_timer.1 matches 200 run scoreboard players reset @s ai_timer.1
    execute if score @s ai_timer.1 matches 200 run tag @s add asset.mob.ender_dragon.phase02.special_action_done
    execute if score @s ai_timer.1 matches 200 run tag @s remove moving_to_0_0