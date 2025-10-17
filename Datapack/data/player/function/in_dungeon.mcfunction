#> player:in_dungeon
#
# in dungeon tick
#
# @within player:tick

# when in void
    execute if predicate {condition:"location_check",predicate:{position:{y:{max:0}}}} run function player:trigger/in_dungeon_void/

# set respawn point
    execute if block ~ ~ ~ #lib:not_solid run spawnpoint @s ~ ~ ~