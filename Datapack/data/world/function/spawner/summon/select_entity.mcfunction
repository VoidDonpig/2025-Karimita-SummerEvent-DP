#> world:spawner/summon/select_entity
#
# select entity
#
# @within world:spawner/summon/init

execute store result score $entry temporary if data storage asset: spawner.data.spawn_potentials[]
execute store result storage asset: spawner.entry int 1 run scoreboard players remove $entry temporary 1
execute if score $entry temporary matches 1.. run function world:spawner/summon/random with storage asset: spawner
execute if score $entry temporary matches 0 run data modify storage asset: spawner.random set value 0
scoreboard players reset $entry temporary