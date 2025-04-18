#> asset:object/lightning_wither_head/teleport

# teleport
    scoreboard players add @s repeat_time 1
    tag @s add this
    execute positioned ~-0.15625 ~-0.15625 ~-0.15625 as @e[type=#lib:all,type=!#lib:monster,dx=0] positioned ~-0.6875 ~-0.6875 ~-0.6875 if entity @s[dx=0] run tag @n[tag=this] add hit
    tag @s remove this
    tp @s ^ ^ ^0.2
    execute unless block ^ ^ ^0.2 #lib:not_solid run tag @s add hit
    execute if entity @s[scores={repeat_time=..1},tag=!Hitted] positioned as @s run function asset:object/lightning_wither_head/teleport
    scoreboard players reset @s repeat_time