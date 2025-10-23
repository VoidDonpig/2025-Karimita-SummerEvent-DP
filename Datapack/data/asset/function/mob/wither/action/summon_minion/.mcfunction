#> asset:mob/wither/action/summon_minion/
#
# summon minion
#
# @context wither action

# act
    function asset:mob/wither/action/summon_minion/armor_stand
    execute as @e[tag=wither_combatant_summoner] at @s run function asset:mob/wither/action/summon_minion/summon

# message
    execute store result score $message temporary run random value 1..3
    execute if score $message temporary matches 1 run tellraw @a[distance=..128] [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "我が兵隊よ、行け！","color": "red"}]
    execute if score $message temporary matches 2 run tellraw @a[distance=..128] [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "我が軍団の力を見せてやる。","color": "red"}]
    execute if score $message temporary matches 3 run tellraw @a[distance=..128] [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "はたして、この数に太刀打ちできるかな？","color": "red"}]
    scoreboard players reset $message temporary

# sfx
    playsound entity.wither.ambient hostile @a[distance=..16] ~ ~ ~ 2 1 0