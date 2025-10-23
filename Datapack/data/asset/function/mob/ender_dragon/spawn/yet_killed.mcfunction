#> asset:mob/ender_dragon/spawn/yet_killed
#
# spawn messages
#
# @within asset:mob/ender_dragon/spawn/

# spawn act
    scoreboard players add @s dialogue_timer.1 1
    execute if score @s dialogue_timer.1 matches 1 run tellraw @a[distance=..128] [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "果ての世界にようこそ、クラフターよ。","color": "red"}]
    execute if score @s dialogue_timer.1 matches 40 run tellraw @a[distance=..128] [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "こんな何も無い空間に来るとは...我に挑むつもりか？","color": "red"}]
    execute if score @s dialogue_timer.1 matches 100 run tellraw @a[distance=..128] [{"text": "[BOSS] Ender Dragon: ", "color": "dark_red"},{"text": "愚か者め、返り討ちにしてくれる！","color": "red"}]

    execute if score @s dialogue_timer.1 matches 100 run tag @s add already_spawned

# playsound
    execute if score @s dialogue_timer.1 matches 1 run playsound entity.ender_dragon.ambient hostile @a[distance=..16] ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 40 run playsound entity.ender_dragon.ambient hostile @a[distance=..16] ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 100 run playsound entity.ender_dragon.ambient hostile @a[distance=..16] ~ ~ ~ 16 1 0

# reset
    execute if score @s dialogue_timer.1 matches 100.. run scoreboard players reset @s dialogue_timer.1