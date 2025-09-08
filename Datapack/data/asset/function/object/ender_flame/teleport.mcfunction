#> asset:object/ender_flame/
#
# teleport process
#
# @within asset:object/ender_flame/

# tp
    tp @s ^ ^ ^0.5
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,tag=!player.exception] run tag @s add hitted
    execute unless block ~ ~ ~ #lib:not_solid run tag @s add hitted
    particle minecraft:dust{color:[0.35, 0.06, 0.5], scale:2.0} ~ ~ ~ 0.1 0.1 0.1 0 4 force
    particle minecraft:dust{color:[0.0, 0.0, 0.0], scale:2.0} ~ ~ ~ 0.1 0.1 0.1 0 4 force
    particle minecraft:dust{color:[0.949,0.251,1.000],scale:2.0} ~ ~ ~ 0.1 0.1 0.1 0 4 force
    scoreboard players add @s repeat_time 1
    execute if entity @s[tag=!hitted] unless score @s repeat_time matches 4.. positioned as @s run function asset:object/ender_flame/teleport
    scoreboard players reset @s repeat_time