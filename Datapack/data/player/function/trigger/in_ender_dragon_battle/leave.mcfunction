#> player:trigger/in_ender_dragon_battle/leave
#
# join fight
#
# @within player:trigger/in_ender_dragon_battle/check

# get data
    function player:storage/get/
    data modify storage player: in set from storage player: out

# convert data
    data modify storage player: __temp__.x set from storage player: out.old_respawn.pos[0]
    data modify storage player: __temp__.y set from storage player: out.old_respawn.pos[1]
    data modify storage player: __temp__.z set from storage player: out.old_respawn.pos[2]
    data modify storage player: __temp__.dimension set from storage player: out.old_respawn.dimension

# restore
    function player:trigger/in_ender_dragon_battle/restore_spawn with storage player: __temp__

# remove data
    data remove storage player: in.old_respawn

# save
    function player:storage/save/

# remove tag
    tag @s remove player.in_ender_dragon_battle

# reset
    data remove storage player: __temp__
    data remove storage player: in
    data remove storage player: out