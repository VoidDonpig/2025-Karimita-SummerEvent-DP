#> player:status/attack_damage/update/
#
# update the attribute
#
# @within player:status/update

# convert data
    execute store result storage player: __temp__.attack_damage float 0.1 run scoreboard players get @s attack_damage

# apply the attribute
    function player:status/attack_damage/update/apply with storage player: __temp__

# reset
    data remove storage player: __temp__