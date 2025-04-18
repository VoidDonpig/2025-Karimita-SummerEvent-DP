#> player:status/safe_fall_distance/update/
#
# update the attribute
#
# @within player:status/update

# convert data
    execute store result storage player: __temp__.safe_fall_distance float 0.01 run scoreboard players get @s safe_fall_distance

# apply the attribute
    function player:status/safe_fall_distance/update/apply with storage player: __temp__

# reset
    data remove storage player: __temp__