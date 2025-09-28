#> player:class/archer/passive
#
# apply passive
#
# @within player:status/update

# calculation
    scoreboard players operation $arrow_damage_increase temporary = @s class.archer.level
    scoreboard players operation $arrow_damage_increase temporary *= $6 constant
    scoreboard players add $arrow_damage_increase temporary 50

    scoreboard players operation $arrow_speed_increase temporary += @s class.archer.level
    scoreboard players operation $arrow_speed_increase temporary /= $2 constant
    scoreboard players add $arrow_speed_increase temporary 5

    scoreboard players set $max_health temporary 10
    scoreboard players set $movement_speed temporary 2

    scoreboard players operation $max_health temporary *= @s class.archer.level
    scoreboard players operation $movement_speed temporary *= @s class.archer.level

# apply
    scoreboard players operation @s max_health += $max_health temporary
    scoreboard players operation @s movement_speed += $movement_speed temporary
    scoreboard players operation @s arrow_damage_increase += $arrow_damage_increase temporary
    scoreboard players operation @s arrow_speed_increase += $arrow_speed_increase temporary

# attribute
    attribute @s minecraft:attack_damage modifier add player:class.archer.decrease_attack_damage -0.25 add_multiplied_total

# reset
    scoreboard players reset $max_health temporary
    scoreboard players reset $arrow_speed_increase temporary
    scoreboard players reset $arrow_damage_increase temporary
    scoreboard players reset $movement_speed temporary