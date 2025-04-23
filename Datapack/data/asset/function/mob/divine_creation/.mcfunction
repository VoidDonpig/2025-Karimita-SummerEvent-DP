#> asset:mob/divine_creation/
#
# mob tick
#
# @within mob:tick/always/tick

# damage
    scoreboard players add @s ai_timer.1 1
    execute if score @s ai_timer.1 matches 1 run damage @p[distance=..3.6] 200 minecraft:mob_attack by @s

# reset
    execute if score @s ai_timer.1 matches 5.. run scoreboard players reset @s ai_timer.1