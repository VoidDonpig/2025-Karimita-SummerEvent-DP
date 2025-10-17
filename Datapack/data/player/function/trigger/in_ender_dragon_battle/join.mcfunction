#> player:trigger/in_ender_dragon_battle/join
#
# join fight
#
# @within player:trigger/in_ender_dragon_battle/check

# get data
    function player:storage/get/
    data modify storage player: in set from storage player: out

# save respawn point
     data modify storage player: in.dungeon.old_respawn set from entity @s respawn

# add tag
    tag @s add player.in_ender_dragon_battle

# save
    function player:storage/save/

# reset
    data remove storage player: in
    data remove storage player: out