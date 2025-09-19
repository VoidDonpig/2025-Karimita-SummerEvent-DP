#> world:spawner/init
#
# set spawner data
#
# @within world:spawner/main

# set timer
    execute store result score @s spawner_timer run data get entity @s data.asset.delay

# set data
    execute store result score @s spawner_health run data get entity @s data.asset.spawner_health

# add tag
    tag @s add already_init