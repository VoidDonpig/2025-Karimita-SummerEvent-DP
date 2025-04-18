#> asset:item/ultimate_wither_sword/do
#
# do
#
# @within asset:item/ultimate_wither_sword/

# remove mana
    scoreboard players operation @s mana -= $needed_mana temporary

# damage effect
    execute at @s run function asset:item/ultimate_wither_sword/damage