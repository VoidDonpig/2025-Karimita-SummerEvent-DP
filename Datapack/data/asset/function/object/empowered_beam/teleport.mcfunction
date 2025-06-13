#> asset:object/empowered_beam/teleport
#
# teleport
#
# @within asset:object/empowered_beam/

# repeat
    scoreboard players add @s repeat_time 1

# teleport
    tp @s ^ ^ ^0.1

# sfx
    particle minecraft:end_rod ~ ~ ~ 0.0 0.0 0.0 0 1 force @a

# hit
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0] run damage @s 5

# rebound sound
    execute unless block ^ ^ ^0.5 #lib:not_solid run function asset:object/empowered_beam/rebound

# rotate
    execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned 0.0 ~ ~ positioned ^ ^ ^-1 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^0.1 rotated as @s unless block ^ ^ ^0.1 #lib:not_solid facing entity @s feet positioned ^ ^ ^0.2 rotated as @s if block ^ ^ ^-0.1 #lib:not_solid facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
    execute at @s positioned ^ ^ ^0.1 rotated ~180 ~ unless block ^ ^ ^0.1 #lib:not_solid at @s positioned ^ ^ ^-0.1 rotated ~180 ~ if block ^ ^ ^-0.1 #lib:not_solid facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
    execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned ~ ~ 0.0 positioned ^ ^ ^-1 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^0.1 rotated as @s unless block ^ ^ ^0.1 #lib:not_solid facing entity @s feet positioned ^ ^ ^0.2 rotated as @s if block ^ ^ ^-0.1 #lib:not_solid facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

# repeat
    execute if entity @s[scores={repeat_time=..8}] at @s run function asset:object/empowered_beam/teleport
    scoreboard players reset @s repeat_time