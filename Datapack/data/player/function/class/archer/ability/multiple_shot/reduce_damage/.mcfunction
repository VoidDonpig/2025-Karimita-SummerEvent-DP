#> player:class/archer/ability/multiple_shot/reduce_damage/
#
# reduce damage
#
# @within player:class/archer/when_shot

# reduce
    scoreboard players set $base temporary 50
    scoreboard players operation $base temporary += @p[tag=arrow_shot] class.archer.level
    execute store result score $damage temporary run data get entity @s damage 100
    scoreboard players operation $damage temporary *= $base temporary
    scoreboard players operation $damage temporary /= $100 constant
    execute store result entity @s damage double 0.01 run scoreboard players get $damage temporary

# reset
    tag @s remove not_data_set
    scoreboard players reset $damage temporary
    scoreboard players reset $base temporary