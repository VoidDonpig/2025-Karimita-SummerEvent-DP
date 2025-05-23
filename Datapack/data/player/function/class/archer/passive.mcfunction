#> player:class/archer/passive
#
# apply passive
#
# @within player:status/update

# calculation
    scoreboard players add @s arrow_damage_increase 50
    scoreboard players operation @s arrow_damage_increase += @s class.archer.level

    scoreboard players set $max_health temporary 10
    #scoreboard players set $movement_speed temporary 2

    scoreboard players operation $max_health temporary *= @s class.archer.level
    #scoreboard players operation $movement_speed temporary *= @s class.archer.level

# apply
    scoreboard players operation @s max_health += $max_health temporary
    #scoreboard players operation @s movement_speed += $movement_speed temporary

# reset
    scoreboard players reset $max_health temporary