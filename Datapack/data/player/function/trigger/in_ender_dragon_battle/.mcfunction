#> player:trigger/in_ender_dragon_battle/
#
# tick
#
# @within player:trigger/in_ender_dragon_battle/check

# in void
    execute if predicate {condition:"location_check",predicate:{position:{y:{max:0}}}} run function player:trigger/in_ender_dragon_battle/in_void

# set respawn point
    execute if block ~ ~ ~ #lib:not_solid run spawnpoint @s ~ ~ ~