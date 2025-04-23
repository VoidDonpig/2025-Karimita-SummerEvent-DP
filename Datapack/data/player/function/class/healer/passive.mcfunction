#> player:class/healer/passive
#
# apply passive
#
# @within player:status/update

# calculation
    scoreboard players set $max_health temporary 10

    scoreboard players operation $max_health temporary *= @s class.healer.level

# apply
    scoreboard players operation @s max_health += $max_health temporary