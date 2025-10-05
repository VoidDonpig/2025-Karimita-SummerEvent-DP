#> world:dungeon/enter
#
# enter common process
#
# @within world:dungeon/*/enter/

# get data
    function player:storage/get/
    data modify storage player: in set from storage player: out

# save respawn point
     data modify storage player: in.dungeon.old_respawn set from entity @s respawn

# full regen
    effect clear @s
    effect give @s resistance 5 9 true
    effect give @s instant_health 5 14 true
    effect give @s saturation 5 14 true
    effect give @s blindness 5 1 true

# save
    function player:storage/save/

# reset
    data remove storage player: in
    data remove storage player: out