#> asset:mob/evoker/
#
# tick
#
# @within mob:tick/tick/tick

# add target tag
    execute on target run tag @s add target

# wind shot
    execute unless score @s ai_timer.1 matches 1.. if entity @n[tag=target,distance=..6] anchored eyes run function asset:mob/evoker/action/wind_shot/
    # manage timer
        execute if score @s ai_timer.1 matches 1.. run scoreboard players remove @s ai_timer.1 1
        # reset
            execute if score @s ai_timer.1 matches ..0 run scoreboard players reset @s ai_timer.1

# sucker lightning
    execute unless score @s ai_timer.2 matches 1.. run function asset:mob/evoker/action/sucker_lightning/
    # manage timer
        execute if score @s ai_timer.2 matches 1.. run scoreboard players remove @s ai_timer.2 1
        # reset
            execute if score @s ai_timer.2 matches ..0 run scoreboard players reset @s ai_timer.2

# marciless fang
    execute if score $difficulty_level world matches 1..3 if predicate lib:periodic/40 positioned as @n[tag=target] run function asset:mob/evoker/action/merciless_fang/
    execute if score $difficulty_level world matches 4 if predicate lib:periodic/20 positioned as @n[tag=target] run function asset:mob/evoker/action/merciless_fang/
    execute if score $difficulty_level world matches 5 if predicate lib:periodic/10 positioned as @n[tag=target] run function asset:mob/evoker/action/merciless_fang/

# defensive fang
    # manage timer
        execute unless score @s ai_timer.3 matches 1.. if entity @n[tag=target,distance=..8] run scoreboard players add @s ai_timer.3 0
    # keep adding timer
        execute if score @s ai_timer.3 matches 0.. run scoreboard players add @s ai_timer.3 1
    # make evoker sit down
        execute if score @s ai_timer.3 matches 1 run summon armor_stand ~ ~0.2 ~ {Tags:["defensive_fang_sit_armor_stand","not_init"],Invisible:1b,Marker:1b,Silent:1b}
        execute if score @s ai_timer.3 matches 1 run ride @s mount @n[type=armor_stand,tag=defensive_fang_sit_armor_stand,tag=not_init]
        execute if score @s ai_timer.3 matches 1 on vehicle run tag @s remove not_init
    # summon fang
        execute if score @s ai_timer.3 matches 10 run function asset:mob/evoker/action/defensive_fang/
    # dismount
        execute if score @s ai_timer.3 matches 30 on vehicle run kill @s
    # reset
        execute if score @s ai_timer.3 matches 60.. run scoreboard players reset @s ai_timer.3

# reset
    tag @e[tag=target] remove target