#> world:spawner/summon/location/
#
# set summon location
#
# @within

# 検索用のタグ
    tag @s add spawn_marker

# select spawn coords
    function world:spawner/summon/location/random with storage asset: spawner.data

# insert Pos
    data modify storage asset: spawn_position set from entity @s Pos
    execute store result score $pos_x temporary run data get storage asset: spawn_position[0]
    execute store result score $pos_y temporary run data get storage asset: spawn_position[1] 100
    execute store result score $pos_z temporary run data get storage asset: spawn_position[2]
    scoreboard players operation $pos_x temporary += $spread_x temporary
    scoreboard players operation $pos_y temporary += $spread_y temporary
    scoreboard players operation $pos_z temporary += $spread_z temporary
    execute store result storage asset: spawn_position[0] double 1 run scoreboard players get $pos_x temporary
    execute store result storage asset: spawn_position[1] double 0.01 run scoreboard players get $pos_y temporary
    execute store result storage asset: spawn_position[2] double 1 run scoreboard players get $pos_z temporary
    data modify entity @s Pos set from storage asset: spawn_position

# リセット
    data remove storage asset: spawn_position
    scoreboard players reset $spread_x
    scoreboard players reset $spread_y
    scoreboard players reset $spread_z
    scoreboard players reset $pos_x
    scoreboard players reset $pos_y
    scoreboard players reset $pos_z