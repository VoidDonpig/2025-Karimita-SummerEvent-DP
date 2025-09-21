#> world:spawner/main
#
# spawner
#
# @within world:

# sfx
    execute if data entity @s data.asset{type:normal} run function world:spawner/particle/normal

    execute if data entity @s data.asset{type:boss} run function world:spawner/particle/boss

# detect player
    execute if entity @p[predicate=!player:is_player_exception,distance=..32] run function world:spawner/player_check with entity @s data.asset

# manage timer
    execute if entity @s[tag=player_is_near] run scoreboard players remove @s spawner_timer 1
    execute if score @s spawner_timer matches ..0 run function world:spawner/summon/init
    tag @s remove player_is_near