#> player:class/knight/passive
#
# apply passive
#
# @within player:status/update

# calculation
    scoreboard players set $max_health temporary 20
    scoreboard players set $knockback_resistance temporary 2
    scoreboard players set $attack_range temporary 6
    scoreboard players set $movement_speed temporary 1

    scoreboard players operation $max_health temporary *= @s class.knight.level
    scoreboard players operation $knockback_resistance temporary *= @s class.knight.level
    scoreboard players operation $attack_range temporary *= @s class.knight.level
    scoreboard players operation $movement_speed temporary *= @s class.knight.level

# apply
    scoreboard players operation @s max_health += $max_health temporary
    scoreboard players operation @s knockback_resistance += $knockback_resistance temporary
    scoreboard players operation @s attack_range += $attack_range temporary
    scoreboard players operation @s movement_speed += $movement_speed temporary