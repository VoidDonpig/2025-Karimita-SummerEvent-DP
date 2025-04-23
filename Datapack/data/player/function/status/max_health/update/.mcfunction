#> player:status/max_health/update/
#
# update the attribute
#
# @within player:status/update

# convert data
    execute store result storage player: __temp__.max_health float 0.1 run scoreboard players get @s max_health

# apply the attribute
    function player:status/max_health/update/apply with storage player: __temp__

# reset
    data remove storage player: __temp__