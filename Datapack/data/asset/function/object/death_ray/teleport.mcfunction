#> asset:object/death_ray/
#
# teleport process
#
# @within asset:object/death_ray/

# tp
    tp @s ^ ^ ^0.5
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:all,type=!#lib:undead,dx=0,predicate=!player:is_player_exception] run tag @s add hitted
    execute unless block ~ ~ ~ #lib:not_solid run tag @s add hitted
    particle minecraft:dust{color:[1.00, 0.0, 0.0], scale:2.0} ~ ~ ~ 0.1 0.1 0.1 0 4 normal
    particle minecraft:dust{color:[0.0, 0.0, 0.0], scale:2.0} ~ ~ ~ 0.1 0.1 0.1 0 4 normal
    scoreboard players add @s repeat_time 1
    execute if entity @s[tag=!hitted] unless score @s repeat_time matches 6.. positioned as @s run function asset:object/death_ray/teleport
    scoreboard players reset @s repeat_time