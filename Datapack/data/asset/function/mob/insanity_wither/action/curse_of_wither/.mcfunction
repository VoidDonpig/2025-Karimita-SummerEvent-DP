#> asset:mob/wither/action/curse_of_wither/
#
# curse of wither
#
# @context wither action

# curse
    execute as @a[distance=..128] at @s run function asset:mob/wither/action/curse_of_wither/apply_curse
    function asset:mob/wither/action/curse_of_wither/armor_stand
    execute as @e[tag=sacred_orb_summoner] at @s positioned ~ ~1.0 ~ run function asset:mob/wither/action/curse_of_wither/summon

# message
    playsound entity.wither.ambient hostile @a[distance=..16] ~ ~ ~ 16 0.5 0
    execute store result score $message temporary run random value 1..3
    execute if score $message temporary matches 1 run tellraw @a[distance=..128] [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "見せてやろう...私の力を。","color": "red"}]
    execute if score $message temporary matches 2 run tellraw @a[distance=..128] [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "跡形もなく消し飛ばしてやろう。","color": "red"}]
    execute if score $message temporary matches 3 run tellraw @a[distance=..128] [{"text": "[BOSS] Wither: ", "color": "dark_red"},{"text": "コォォォォォ...","color": "red"}]
    scoreboard players reset $message temporary