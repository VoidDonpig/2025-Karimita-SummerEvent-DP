#> world:spawner/summon/
#
# summon entity
#
# @within world:spawner/summon/init

$data modify storage asset: mob set from storage asset: spawner.data.spawn_potentials[$(random)]

# set summon location
    execute summon marker run function world:spawner/summon/location/

# summon mob
    execute at @e[type=marker,tag=spawn_marker,distance=..32] align xz positioned ~0.5 ~-0.3 ~0.5 if block ~ ~ ~ #lib:not_solid if block ~ ~0.9 ~ #lib:not_solid if block ~ ~1.8 ~ #lib:not_solid unless data storage asset: mob.nbt run function world:spawner/summon/not_has_nbt with storage asset: mob
    execute at @e[type=marker,tag=spawn_marker,distance=..32] align xz positioned ~0.5 ~-0.3 ~0.5 if block ~ ~ ~ #lib:not_solid if block ~ ~0.9 ~ #lib:not_solid if block ~ ~1.8 ~ #lib:not_solid if data storage asset: mob.nbt run function world:spawner/summon/has_nbt with storage asset: mob

    data remove storage asset: mob
    kill @e[type=marker,tag=spawn_marker,distance=..32]

# repeat
    execute unless entity @s[tag=permanent_spawner] run scoreboard players remove @s spawner_health 1
    scoreboard players remove $spawn_count temporary 1
    execute if score $spawn_count temporary matches 1.. run function world:spawner/summon/select_entity
    execute if score $spawn_count temporary matches 1.. run function world:spawner/summon/count_nearby_entity with storage asset: spawner.data
    execute if score $spawn_count temporary matches 1.. if score $nearby_entities temporary < $max_nearby_entities temporary run function world:spawner/summon/ with storage asset: spawner