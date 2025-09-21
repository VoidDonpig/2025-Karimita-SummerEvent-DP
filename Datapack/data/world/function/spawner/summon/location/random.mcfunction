#> world:spawner/summon/location/random
#
# select location
#
# @within world:spawner/summon/location/

# spread
    $execute store result score $spread_x temporary run random value -$(spawn_range)..$(spawn_range)
    #execute store result score $spread_y temporary run random value 30..60
    $execute store result score $spread_z temporary run random value -$(spawn_range)..$(spawn_range)