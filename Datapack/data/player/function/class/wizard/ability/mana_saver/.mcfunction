#> player:class/wizard/ability/mana_saver/
#
# reduce mana cost
#
# @context magic items

# reduce mana use
    scoreboard players set $mana_saver temporary 800
    scoreboard players operation $mana_saver_level temporary = @s class.wizard.level
    scoreboard players operation $mana_saver_level temporary *= $6 constant
    scoreboard players operation $mana_saver temporary -= $mana_saver_level temporary
    scoreboard players operation $needed_mana temporary *= $mana_saver temporary
    scoreboard players operation $needed_mana temporary /= $1000 constant

# reset
    scoreboard players reset $mana_saver temporary
    scoreboard players reset $mana_saver_level temporary