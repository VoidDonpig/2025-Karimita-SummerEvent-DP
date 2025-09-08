#> player:class/knight/ability/powerful_slash/slash_vertical
#
# vertical slash
#
# @within player:class/knight/ability/powerful_slash/do
#         player:class/knight/ability/powerful_slash/slash_vertical

# slash
    particle minecraft:dust{color:[1.000,1.000,1.000],scale:0.75} ~ ~ ~
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:mob,dx=0] run tag @s add hitted
    
# repeat
    $execute positioned ^ ^ ^0.2 if entity @s[distance=..$(range)] run function player:class/knight/ability/powerful_slash/slash_vertical with storage player: powerful_slash

# rotate
    $execute positioned ^ ^ ^0.2 unless entity @s[distance=..$(range)] run scoreboard players add @s repeat_time 1
    $execute positioned ^ ^ ^0.2 unless entity @s[distance=..$(range)] unless score @s repeat_time matches 30.. positioned as @s positioned ~ ~ ~ rotated ~ ~5 positioned ^ ^ ^0.2 run function player:class/knight/ability/powerful_slash/slash_vertical with storage player: powerful_slash
    $execute positioned ^ ^ ^0.2 unless entity @s[distance=..$(range)] if score @s repeat_time matches 30.. run scoreboard players reset @s repeat_time

# cooltime
    scoreboard players set @s powerful_slash_cooltime 10