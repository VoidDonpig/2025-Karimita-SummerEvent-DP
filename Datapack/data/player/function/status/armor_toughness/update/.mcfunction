#> player:status/armor_toughness/update/
#
# update the attribute
#
# @within player:status/update

# convert data
    execute store result storage player: __temp__.armor_toughness float 0.1 run scoreboard players get @s armor_toughness

# apply the attribute
    function player:status/armor_toughness/update/apply with storage player: __temp__

# reset
    data remove storage player: __temp__