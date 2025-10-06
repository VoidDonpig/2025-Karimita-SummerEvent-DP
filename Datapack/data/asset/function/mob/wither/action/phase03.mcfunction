#> asset:mob/wither/action/phase03
#
# boss phase 3
#
# @within asset:mob/wither/action/

# move
    execute if entity @s[tag=!stop_moving,tag=!charging] run function asset:mob/wither/base_move_2

# always invul
    data modify entity @s Invul set value 2

# set health
    execute if score @s ai_counter.1 matches ..2 unless score @s dialogue_timer.1 matches -2147483648..2147483647 run scoreboard players set @s mob.health 6750

# message
    execute if score @s ai_counter.1 matches ..2 run scoreboard players add @s dialogue_timer.1 1
    execute if score @s dialogue_timer.1 matches 1 run tellraw @a [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "遊戯は終わりにしよう。","color": "red"}]
    execute if score @s dialogue_timer.1 matches 40 run tellraw @a [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "私はウィザー、全てを蹂躙する存在。","color": "red"}]
    execute if score @s dialogue_timer.1 matches 100 run tellraw @a [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "一方的な虐殺の時間だ。","color": "red"}]

# playsound
    execute if score @s dialogue_timer.1 matches 1 run playsound entity.wither.ambient hostile @a ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 40 run playsound entity.wither.ambient hostile @a ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 100 run playsound entity.wither.ambient hostile @a ~ ~ ~ 16 1 0

# set phase
    execute if score @s dialogue_timer.1 matches 1 run function asset:mob/wither/action/reset
    execute if score @s ai_counter.1 matches ..2 if score @s dialogue_timer.1 matches 100 run scoreboard players add @s ai_counter.1 1

# ai scores
    scoreboard players add @s ai_timer.1 1
    scoreboard players add @s ai_timer.2 1

# rapid wither skull
    execute if predicate lib:periodic/5 run function asset:mob/wither/action/rapid_skull_shot/

# insta kill
    execute if score @s ai_timer.1 matches 1 run function asset:mob/wither/action/insta_kill/

# death lay
    execute if score @s ai_timer.2 matches 600 run function asset:mob/wither/action/death_ray/summon_1
    execute if score @s ai_timer.2 matches 610 run function asset:mob/wither/action/death_ray/summon_2
    execute if score @s ai_timer.2 matches 620 run function asset:mob/wither/action/death_ray/summon_3

# vanish underling
    execute if score @s ai_timer.2 matches 900 as @e[type=wither,tag=wither_underling] at @s run summon marker ~ ~1.5 ~ {Tags:["asset","wither_healing_soul"],data:{asset:{id:wither_healing_soul}}}
    execute if score @s ai_timer.2 matches 900 as @e[type=wither,tag=wither_underling] at @s run particle flame ~ ~1.0 ~ 0.5 0.5 0.5 0.2 32 force @a
    execute if score @s ai_timer.2 matches 900 as @e[type=wither,tag=wither_underling] at @s run playsound block.sculk_shrieker.shriek hostile @a ~ ~ ~ 2 0.5 1
    execute if score @s ai_timer.2 matches 900 as @e[type=wither,tag=wither_underling] at @s run tp @s ~ -1000 ~
    execute if score @s ai_timer.2 matches 900 as @e[type=wither,tag=wither_underling] at @s run tag @s add dead

# summon underling
    execute if score @s ai_timer.2 matches 900 run function asset:mob/wither/action/call_underling/

# message
    execute if score @s ai_timer.2 matches 900 store result score $random temporary run random value 0..2
    execute if score @s ai_timer.2 matches 900 if score $random temporary matches 0 run tellraw @a [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "諦めろ、大人しく死を受け入れるがよい。","color": "red"}]
    execute if score @s ai_timer.2 matches 900 if score $random temporary matches 1 run tellraw @a [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "このすばしっこい蟻めが。","color": "red"}]
    execute if score @s ai_timer.2 matches 900 if score $random temporary matches 2 run tellraw @a [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "早々に死ね！","color": "red"}]
    execute if score @s ai_timer.2 matches 900 run scoreboard players reset $random temporary

# reset
    execute if score @s ai_timer.1 matches 10.. run scoreboard players reset @s ai_timer.1
    execute if score @s ai_timer.2 matches 900.. run scoreboard players reset @s ai_timer.2
    execute if score @s dialogue_timer.1 matches 100.. run scoreboard players reset @s dialogue_timer.1