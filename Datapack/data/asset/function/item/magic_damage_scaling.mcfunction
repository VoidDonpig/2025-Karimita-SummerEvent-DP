#> asset:item/magic_damage_scaling
#
# scaling magic damage
#
# @context ability
#
# @read
#   score $damage temporary
#       base damage
#
#   score $damage_scaling temporary
#       damage scaling amount

# scaling
    scoreboard players operation $adding_damage temporary = $damage temporary
    scoreboard players operation $damage_scaling temporary *= @s ability_damage
    scoreboard players operation $adding_damage temporary *= $damage_scaling temporary
    scoreboard players operation $adding_damage temporary /= $10000 constant
    scoreboard players operation $damage temporary += $adding_damage temporary