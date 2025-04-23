#> player:status/mana/use/check
#
# mana check
#
# @context mana using item
#
# @reads
#   score $needed_mana temporary
#       needed mana for ability

# check mana
    execute unless score @s mana >= $needed_mana temporary run tag @s remove mana_ok