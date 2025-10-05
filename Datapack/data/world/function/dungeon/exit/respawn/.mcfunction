#> world:dungeon/exit/respawn/
#
# restore dungeon.old_respawn
#
# @within world:dungeon/exit/

# get data
    function player:storage/get/
    data modify storage player: in set from storage player: out

# convert data
    data modify storage player: __temp__.x set from storage player: out.dungeon.old_respawn.pos[0]
    data modify storage player: __temp__.y set from storage player: out.dungeon.old_respawn.pos[1]
    data modify storage player: __temp__.z set from storage player: out.dungeon.old_respawn.pos[2]
    data modify storage player: __temp__.dimension set from storage player: out.dungeon.old_respawn.dimension

# restore
    function world:dungeon/exit/respawn/restore with storage player: __temp__

# remove data
    data remove storage player: in.dungeon.old_respawn

# save
    function player:storage/save/

# reset
    data remove storage player: __temp__
    data remove storage player: in
    data remove storage player: out