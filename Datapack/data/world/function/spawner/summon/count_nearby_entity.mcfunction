#> world:spawner/summon/count_nearby_entity
#
# count nearby entities
#
# @within world:spawner/summon/init

$execute store result score $nearby_entities temporary if entity @e[type=#lib:monster,distance=..$(spawn_range)]