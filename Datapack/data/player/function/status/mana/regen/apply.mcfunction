#> player:status/mana/regen/apply
#
# apply regen mana
#
# @input
#   score $regen_mana temporary
#       define regeneration mana for THIS

# apply
    scoreboard players operation @s mana += $regen_mana temporary

# limit mana
    scoreboard players operation @s mana < @s max_mana

# reset
    scoreboard players reset $regen_mana temporary