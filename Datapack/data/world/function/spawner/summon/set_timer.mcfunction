#> world:spawner/summon/set_timer
#
# set timer
#
# @within world:spawner/summon/init

$execute store result score @s spawner_timer run random value $(min_spawn_delay)..$(max_spawn_delay)