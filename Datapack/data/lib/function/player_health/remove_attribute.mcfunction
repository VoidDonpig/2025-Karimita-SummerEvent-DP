#> lib:player_health/remove_attribute
#
# remove attribute
#
# @within player:advancement_tick

# reset
    attribute @s max_health modifier remove lib:player_health.max_health

# remove tag
    tag @s remove lib.player_health.modified

# tag
    tag @s add lib.player_health.finish