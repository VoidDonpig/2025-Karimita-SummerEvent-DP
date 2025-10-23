#> world:spawner/summon/init
#
# spawner init
#
# @within world:spawner/main

# get data
    data modify storage asset: spawner.data set from entity @s data.asset
    execute store result score $spawn_count temporary run data get storage asset: spawner.data.spawn_count
    execute if score @s spawner_health < $spawn_count temporary run scoreboard players operation $spawn_count temporary = @s spawner_health
    execute store result score $max_nearby_entities temporary run data get storage asset: spawner.data.max_nearby_entities

# select entity
    function world:spawner/summon/select_entity

# summon mob regarding random number
    function world:spawner/summon/count_nearby_entity with storage asset: spawner.data
    execute if score $nearby_entities temporary < $max_nearby_entities temporary run function world:spawner/summon/ with storage asset: spawner

# set timer
    function world:spawner/summon/set_timer with storage asset: spawner.data

# kill spawner
    execute if entity @s[tag=only_once_spawner] run scoreboard players set @s spawner_health 0
    execute if score @s spawner_health matches ..0 run playsound block.amethyst_block.break master @a[distance=..16] ~ ~ ~
    execute if score @s spawner_health matches ..0 run kill @s

# reset
    data remove storage asset: spawner
    scoreboard players reset $spawn_count temporary
    scoreboard players reset $max_nearby_entities temporary
    scoreboard players reset $nearby_entities temporary