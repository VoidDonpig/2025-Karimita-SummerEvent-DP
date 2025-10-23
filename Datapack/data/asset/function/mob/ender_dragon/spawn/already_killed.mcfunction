#> asset:mob/ender_dragon/spawn/already_killed
#
# ender_dragon messages
#
# @within asset:mob/ender_dragon/spawn/

# spawn act
    scoreboard players add @s dialogue_timer.1 1
    execute if score @s dialogue_timer.1 matches 1 run tellraw @a[distance=..128] [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "...","color": "red"}]
    execute if score @s dialogue_timer.1 matches 40 run tellraw @a[distance=..128] [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "我を蘇らせるとは...","color": "red"}]
    execute if score @s dialogue_timer.1 matches 100 run tellraw @a[distance=..128] [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "...一体何故に？","color": "red"}]
    execute if score @s dialogue_timer.1 matches 160 run tellraw @a[distance=..128] [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "まあそんなことはどうでも良いか。","color": "red"}]
    execute if score @s dialogue_timer.1 matches 220 run tellraw @a[distance=..128] [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "貴様を虚空の塵にしてやる。","color": "red"}]

    execute if score @s dialogue_timer.1 matches 220 run tag @s add already_spawned

# playsound
    execute if score @s dialogue_timer.1 matches 1 run playsound entity.ender_dragon.ambient hostile @a[distance=..16] ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 40 run playsound entity.ender_dragon.ambient hostile @a[distance=..16] ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 100 run playsound entity.ender_dragon.ambient hostile @a[distance=..16] ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 160 run playsound entity.ender_dragon.ambient hostile @a[distance=..16] ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 220 run playsound entity.ender_dragon.ambient hostile @a[distance=..16] ~ ~ ~ 16 1 0

# reset
    execute if score @s dialogue_timer.1 matches 220.. run scoreboard players reset @s dialogue_timer.1