#> asset:item/lightning_wand/marker_teleport
#
# teleport marker
#
# @within asset:item/lightning_wand/do

# looking nearest entity
    rotate @s facing entity @n[type=#lib:mob,distance=..6,tag=!hit] eyes

# vanish if solid
    execute unless block ^ ^ ^0.5 #lib:not_solid run kill @s

# teleport
    execute if block ^ ^ ^0.5 #lib:not_solid run tp @s ^ ^ ^0.5

# add hit tag
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:mob,dx=0,tag=!hit] run tag @s add hit

# particle
    particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 0.0 0.0 0.0 0 4 normal
    particle wax_off ~ ~ ~ 0.4 0.4 0.4 0 4 normal
    particle electric_spark ~ ~ ~ 0.4 0.4 0.4 0 8 normal
    particle dust_color_transition{from_color:[0.992,1.0,0.62],to_color:[1.0,0.941,0.133],scale:2} ~ ~ ~ 0.1 0.1 0.1 0 3 normal
    particle dust_color_transition{from_color:[0.918,1.0,0.639],to_color:[0.914,1.0,0.9],scale:0.5} ~ ~ ~ 0.2 0.2 0.2 0 8 normal

# repeat
    scoreboard players add @s repeat_time 1
    execute if block ^ ^ ^0.5 #lib:not_solid if score @s repeat_time matches ..80 positioned ^ ^ ^0.5 at @s run function asset:item/lightning_wand/marker_teleport

# kill
    execute unless block ^ ^ ^0.5 #lib:not_solid run kill @s
    execute if score @s repeat_time matches 81.. run kill @s