#> asset:object/rotten_bullet/
#
# teleport process
#
# @within asset:object/rotten_bullet/

# tp
    tp @s ^ ^ ^0.5
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:all,type=!#lib:undead,dx=0,predicate=!player:is_player_exception] run tag @s add hitted
    execute unless block ~ ~ ~ #lib:not_solid run tag @s add hitted
    particle minecraft:dust{color:[1.00, 0.0, 0.0], scale:2.0} ~ ~ ~ 0.1 0.1 0.1 0 4 force
    particle minecraft:dust{color:[0.0, 0.0, 0.0], scale:2.0} ~ ~ ~ 0.1 0.1 0.1 0 4 force
    scoreboard players add @s repeat_time 1
    execute if entity @s[tag=!hitted] unless score @s repeat_time matches 6.. positioned as @s run function asset:object/rotten_bullet/teleport
    scoreboard players reset @s repeat_time