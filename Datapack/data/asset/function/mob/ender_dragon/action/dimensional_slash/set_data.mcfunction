#> asset:mob/ender_dragon/action/dimensional_slash/set_data
#
# set data
#
# @within asset:mob/ender_dragon/action/dimensional_slash/summon

# set rotation
    execute store result score $rotation_x temporary run data get entity @s Rotation[0]
    execute store result score $rng_0 temporary run random value -20..20
    execute store result entity @s Rotation[0] float 1 run scoreboard players operation $rotation_x temporary += $rng_0 temporary

# reset
    scoreboard players reset $rotation_x temporary
    scoreboard players reset $rng_0

# place marker
    execute rotated as @s run function asset:mob/ender_dragon/action/dimensional_slash/place_marker