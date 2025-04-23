#> player:status/movement_speed/update/
#
# update the attribute
#
# @within player:status/update

# convert data
    execute store result storage player: __temp__.movement_speed float 0.001 run scoreboard players get @s movement_speed

# apply the attribute
    function player:status/movement_speed/update/apply with storage player: __temp__

# reset
    data remove storage player: __temp__