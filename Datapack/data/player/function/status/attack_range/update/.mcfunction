#> player:status/attack_range/update/
#
# update the attribute
#
# @within player:status/update

# convert data
    execute store result storage player: __temp__.attack_range float 0.01 run scoreboard players get @s attack_range

# apply the attribute
    function player:status/attack_range/update/apply with storage player: __temp__

# reset
    data remove storage player: __temp__