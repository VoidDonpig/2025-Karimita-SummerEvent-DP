#> world:spawner/player_check
#
# detect player
#
# @within world:spawner/main

# get player Pos
    data modify storage asset: player_position set from entity @s Pos
    execute store result score $player_x temporary run data get storage asset: player_position[0] 10
    execute store result score $player_y temporary run data get storage asset: player_position[1] 10
    execute store result score $player_z temporary run data get storage asset: player_position[2] 10

# get spawner Pos
    data modify storage asset: spawner_position set from entity @e[type=marker,tag=spawner,distance=..0.01,limit=1] Pos
    execute store result score $spawner_x temporary run data get storage asset: spawner_position[0] 10
    execute store result score $spawner_y temporary run data get storage asset: spawner_position[1] 10
    execute store result score $spawner_z temporary run data get storage asset: spawner_position[2] 10

# detect player
    scoreboard players operation $player_x temporary -= $spawner_x temporary
    scoreboard players operation $player_y temporary -= $spawner_y temporary
    scoreboard players operation $player_z temporary -= $spawner_z temporary
    scoreboard players operation $player_x temporary *= $player_x temporary
    scoreboard players operation $player_y temporary *= $player_y temporary
    scoreboard players operation $player_z temporary *= $player_z temporary
    scoreboard players operation $distance temporary += $player_x temporary
    scoreboard players operation $distance temporary += $player_y temporary
    scoreboard players operation $distance temporary += $player_z temporary
    execute if score $distance temporary <= $required_player_range temporary run tag @e[type=marker,tag=spawner,distance=..0.01] add player_is_near

# reset
    data remove storage asset: player_position
    data remove storage asset: spawner_position
    scoreboard players reset $spawner_x temporary
    scoreboard players reset $spawner_y temporary
    scoreboard players reset $spawner_z temporary
    scoreboard players reset $player_x temporary
    scoreboard players reset $player_y temporary
    scoreboard players reset $player_z temporary
    scoreboard players reset $distance temporary