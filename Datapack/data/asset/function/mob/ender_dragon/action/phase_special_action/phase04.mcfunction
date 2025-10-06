#> asset:mob/ender_dragon/action/phase_special_action/phase04
#
# phase 4 special action
#
# @within asset:mob/ender_dragon/action/phase04

# init
    scoreboard players reset @s[tag=!asset.mob.ender_dragon.phase04.init] ai_timer.1
    scoreboard players reset @s[tag=!asset.mob.ender_dragon.phase04.init] ai_timer.2
    scoreboard players reset @s[tag=!asset.mob.ender_dragon.phase04.init] ai_counter.1
    scoreboard players reset @s[tag=!asset.mob.ender_dragon.phase04.init] dialogue_timer.1

# dialogue
    execute if score @s ai_counter.1 matches ..1 run scoreboard players add @s dialogue_timer.1 1
    execute if score @s dialogue_timer.1 matches 1 run tellraw @a [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "あまり調子に乗るんじゃないぞ。","color": "red"}]
    execute if score @s dialogue_timer.1 matches 40 run tellraw @a [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "私の力は一撃で人間を葬り去ることができる。","color": "red"}]
    execute if score @s dialogue_timer.1 matches 100 run tellraw @a [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "それがどんなものか見せてやろう！","color": "red"}]