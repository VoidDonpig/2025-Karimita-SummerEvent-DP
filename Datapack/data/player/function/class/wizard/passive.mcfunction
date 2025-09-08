#> player:class/wizard/passive
#
# apply passive
#
# @within player:status/update

# calculation
    scoreboard players set $max_health temporary 10
    scoreboard players set $max_mana temporary 20

    scoreboard players operation $max_health temporary *= @s class.wizard.level
    scoreboard players operation $max_mana temporary *= @s class.wizard.level

# apply
    scoreboard players operation @s max_health += $max_health temporary
    scoreboard players operation @s max_mana += $max_mana temporary

# reset
    scoreboard players reset $max_health temporary
    scoreboard players reset $max_mana temporary