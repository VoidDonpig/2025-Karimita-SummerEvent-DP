#> player:status/armor/update/
#
# update the attribute
#
# @within player:status/update

# convert data
    execute store result storage player: __temp__.armor float 0.1 run scoreboard players get @s armor

# apply the attribute
    function player:status/armor/update/apply with storage player: __temp__

# reset
    data remove storage player: __temp__