#> asset:item/celestial_blade/do
#
# do
#
# @within asset:item/celestial_blade/

# remove mana
    scoreboard players operation @s mana -= $needed_mana temporary

# teleport
    execute anchored eyes positioned ^ ^ ^ run function asset:item/celestial_blade/teleport

# damage
    execute at @s run function asset:item/celestial_blade/damage