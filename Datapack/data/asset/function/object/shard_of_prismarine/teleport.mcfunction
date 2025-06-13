#> asset:object/shard_of_prismarine/teleport

# teleport
    scoreboard players add @s repeat_time 1
    tag @s add attacker
    execute positioned ~-0.15625 ~-0.15625 ~-0.15625 as @p[dx=0] positioned ~-0.6875 ~-0.6875 ~-0.6875 if entity @s[dx=0] run tag @n[tag=attacker] add hit
    tag @s remove attacker
    tp @s ^ ^ ^0.2
    execute unless block ^ ^ ^0.2 #lib:not_solid run tag @s add hit
    execute if entity @s[scores={repeat_time=..4},tag=!hit] at @s run function asset:object/shard_of_prismarine/teleport
    scoreboard players reset @s repeat_time