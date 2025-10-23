#> asset:mob/ender_dragon/phase_special_action/phase02
#
# phase 2 special action
#
# @within asset:mob/ender_dragon/action/phase02

# reset
    scoreboard players reset @s[tag=!asset.mob.ender_dragon.phase02.init] ai_counter.1
    scoreboard players reset @s[tag=!asset.mob.ender_dragon.phase02.init] ai_timer.1
    execute if entity @s[tag=!asset.mob.ender_dragon.phase02.init] run function asset:mob/ender_dragon/move_to_0_0
    tag @s add asset.mob.ender_dragon.phase02.init

# special attack timer
    scoreboard players add @s ai_timer.1 1

# dialogue
    execute if score @s ai_timer.1 matches 1 run tellraw @a[distance=..128] [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "少しは手慣れのようだな。","color": "red"}]
    execute if score @s ai_timer.1 matches 40 run tellraw @a[distance=..128] [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "だが、我には届かぬ。","color": "red"}]
    execute if score @s ai_timer.1 matches 100 run tellraw @a[distance=..128] [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "死ぬが良い。","color": "red"}]
    execute if score @s ai_timer.1 matches 1 run playsound entity.ender_dragon.growl hostile @a[distance=..128] ~ ~ ~ 8 1 0
    execute if score @s ai_timer.1 matches 40 run playsound entity.ender_dragon.growl hostile @a[distance=..128] ~ ~ ~ 8 1 0
    execute if score @s ai_timer.1 matches 100 run playsound entity.ender_dragon.growl hostile @a[distance=..128] ~ ~ ~ 8 1 0

# summon ender army
    execute if score @s ai_timer.1 matches 1 run function asset:mob/ender_dragon/action/summon_ender_army/

# dimensional slash
    # summon
        execute if score @s ai_timer.1 matches 160 run function asset:mob/ender_dragon/action/dimensional_slash/summon
    # charging
        execute if score @s ai_timer.1 matches 1..200 run function asset:mob/ender_dragon/action/dimensional_slash/charging

# reset
    execute if score @s ai_timer.1 matches 200 run tag @s add asset.mob.ender_dragon.phase02.special_action_done
    execute if score @s ai_timer.1 matches 200 run scoreboard players reset @s ai_timer.1