#> asset:mob/insanity_wither/spawn/yet_killed
#
# spawn messages
#
# @within asset:mob/insanity_wither/spawn/

# spawn act
    scoreboard players add @s dialogue_timer.1 1
    execute if score @s dialogue_timer.1 matches 1 run tellraw @a [{"text": "[BOSS] Insanity Wither: ", "color": "dark_red"},{"text": "ｃｆらうぇｔゔぇｃうぇｖうぇ","color": "red"}]
    execute if score @s dialogue_timer.1 matches 1 run data modify entity @s Invul set value 200
    execute if score @s dialogue_timer.1 matches 40 run tellraw @a [{"text": "[BOSS] Insanity Wither: ", "color": "dark_red"},{"text": "あｗｖｃｔｃｘれｖｃ","color": "red"}]
    execute if score @s dialogue_timer.1 matches 100 run tellraw @a [{"text": "[BOSS] Insanity Wither: ", "color": "dark_red"},{"text": "あｗｃｔｇｔｃｃｖｔｒゔぁべっｓｗｒ","color": "red"}]

    execute if score @s dialogue_timer.1 matches 200 run tag @s add already_spawned

# lightning
    execute if score @s dialogue_timer.1 matches 100..140 if predicate lib:periodic/4 as @e[type=#lib:all,type=!#lib:undead,distance=..128,predicate=!player:is_player_exception] at @s run function asset:mob/insanity_wither/action/catastrophic_lightning/

# playsound
    execute if score @s dialogue_timer.1 matches 1 run playsound entity.wither.ambient hostile @a ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 40 run playsound entity.wither.ambient hostile @a ~ ~ ~ 16 1 0
    execute if score @s dialogue_timer.1 matches 100 run playsound entity.wither.ambient hostile @a ~ ~ ~ 16 1 0

# reset
    execute if score @s dialogue_timer.1 matches 200.. run scoreboard players reset @s dialogue_timer.1