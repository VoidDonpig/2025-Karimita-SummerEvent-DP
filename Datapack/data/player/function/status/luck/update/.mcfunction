#> player:status/luck/update/
#
# update the attribute
#
# @within player:status/update

# convert data
    execute store result storage player: __temp__.luck float 0.01 run scoreboard players get @s luck

# apply the attribute
    function player:status/luck/update/apply with storage player: __temp__

# reset
    data remove storage player: __temp__