#> player:class/healer/ability/healing_circle/circle
#
# circle process
#
# @within function player:class/healer/ability/healing_circle/
#         function player:class/healer/ability/healing_circle/circle

# circle
    $execute anchored feet run particle minecraft:happy_villager ^ ^ ^$(radius) 0.0 0.0 0.0 0 1 normal

# repeat
    scoreboard players add @s repeat_time 1
    execute rotated ~5 0 if score @s repeat_time matches 1..72 run function player:class/healer/ability/healing_circle/circle with storage player: healing_circle
    scoreboard players reset @s repeat_time