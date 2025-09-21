#> world:spawner/player_check
#
# detect player
#
# @within world:spawner/main

# detect player
    $execute if entity @p[tag=!player.exception,distance=..$(required_player_range)] run tag @s add player_is_near