#> asset:mob/wither/spawn/already_killed
#
# wither messages
#
# @within asset:mob/wither/spawn/

# spawn act
    scoreboard players add @s dialogue_timer.1 1
    execute if score @s dialogue_timer.1 matches 1 run tellraw @a [{"text": "[BOSS] ウィザー: ", "color": "dark_red"},{"text": "ああ..またお前か...","color": "red"}]
    execute if score @s dialogue_timer.1 matches 1 run data modify entity @s Invul set value 200
    execute if score @s dialogue_timer.1 matches 40 run tellraw @a [{"text": "[BOSS] ウィザー: ", "color": "dark_red"},{"text": "お前はいったい何を望む？","color": "red"}]
    execute if score @s dialogue_timer.1 matches 100 run tellraw @a [{"text": "[BOSS] ウィザー: ", "color": "dark_red"},{"text": "...まあ、そんなことはどうでもよいか。","color": "red"}]
    execute if score @s dialogue_timer.1 matches 160 run tellraw @a [{"text": "[BOSS] ウィザー: ", "color": "dark_red"},{"text": "さあ全てを終わらせよう。","color": "red"}]

    execute if score @s dialogue_timer.1 matches 200 run tag @s add already_spawned

# playsound
    execute if score @s dialogue_timer.1 matches 1 run playsound entity.wither.ambient hostile @a ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 40 run playsound entity.wither.ambient hostile @a ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 100 run playsound entity.wither.ambient hostile @a ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 160 run playsound entity.wither.ambient hostile @a ~ ~ ~ 16 1 0

# reset
    execute if score @s dialogue_timer.1 matches 200.. run scoreboard players reset @s dialogue_timer.1