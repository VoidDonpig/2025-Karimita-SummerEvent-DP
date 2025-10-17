#> player:faint/check
#
# faint timer
#
# @within player:tick

# remove tag
    tag @s remove player.faint_enabled

# check
    execute if predicate world:is_in_dungeon run tag @s add player.faint_enabled
    execute if predicate {"condition": "location_check",predicate:{dimension:"the_end"}} if entity @n[type=ender_dragon,distance=..256] run tag @s add player.faint_enabled