#> world:dungeon/enter
#
# enter common process
#
# @within world:dungeon/*/enter/

# get data
    function player:storage/get/
    data modify storage player: in set from storage player: out

# save respawn point
     data modify storage player: in.old_respawn set from entity @s respawn

# add tag
    tag @s add player.in_dungeon

# full regen
    effect clear @s
    effect give @s instant_health 1 14 true
    effect give @s saturation 1 14 true
    effect give @s blindness 5 1 true

# invul
    scoreboard players set @s player.invul_timer 100

# save
    function player:storage/save/

# reset
    data remove storage player: in
    data remove storage player: out