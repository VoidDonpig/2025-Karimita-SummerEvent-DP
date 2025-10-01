#> world:structure/hub_islands
#
# place islands
#
# @within world:structure/

# set island
    execute positioned -30 15 -31 run forceload add ~ ~ ~ ~
    execute positioned -30 15 -31 run place template world:hub/hub_islands
    execute positioned -30 15 -31 run forceload remove ~ ~ ~ ~