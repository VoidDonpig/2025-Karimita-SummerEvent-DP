#> asset:item/soothing_wand/healer/
#
# healing circle process
#
# @within asset:item/soothing_wand/do

# circle
    scoreboard players set $radius temporary 8
    scoreboard players operation $radius temporary *= @s class.healer.level
    execute store result storage asset: soothing_wand_heal.radius double 0.01 run scoreboard players add $radius temporary 800

# parcicle
    execute rotated 0 0 run function asset:item/soothing_wand/healer/circle with storage asset: soothing_wand_heal

# effect
    function asset:item/soothing_wand/healer/effect with storage asset: soothing_wand_heal

# reset
    scoreboard players reset $radius temporary
    data remove storage asset: soothing_wand_heal