#> player:class/wizard/ability/mana_regeneration_boost/
#
# increase mana regen
#
# @within player:status/mana/regen/

# increase mana regen
    scoreboard players set $mana_regeneration_boost temporary 150
    scoreboard players operation $mana_regeneration_boost temporary += @s class.wizard.level
    scoreboard players operation $regen_mana temporary *= $mana_regeneration_boost temporary
    scoreboard players operation $regen_mana temporary /= $100 constant

# reset
    scoreboard players reset $mana_regeneration_boost temporary