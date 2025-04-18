#> asset:item/soothing_wand/healer/circle
#
# circle process
#
# @within function asset:item/soothing_wand/healer/
#         function asset:item/soothing_wand/healer/circle

# circle
    $execute anchored feet run particle minecraft:heart ^ ^ ^$(radius) 0.0 0.0 0.0 0 1 force @a[distance=..32]

# repeat
    scoreboard players add @s repeat_time 1
    execute rotated ~5 0 if score @s repeat_time matches 1..72 run function asset:item/soothing_wand/healer/circle with storage asset: soothing_wand_heal
    scoreboard players reset @s repeat_time