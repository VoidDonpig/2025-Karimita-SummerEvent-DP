#> player:status/knockback_resistance/update/
#
# update the attribute
#
# @within player:status/update

# convert data
    execute store result storage player: __temp__.knockback_resistance float 0.1 run scoreboard players get @s knockback_resistance

# apply the attribute
    function player:status/knockback_resistance/update/apply with storage player: __temp__

# reset
    data remove storage player: __temp__