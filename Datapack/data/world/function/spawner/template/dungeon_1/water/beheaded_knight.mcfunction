#> world:spawner/template/dungeon_1/water/beheaded_knight
#
# spawner template
#
# @context template

# summon spawner
    execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["spawner","only_once_spawner"],data:{asset:{id:spawner,type:normal,delay:1,spawner_health:256,required_player_range:7,spawn_count:1,max_nearby_entities:16,spawn_range:0,min_spawn_delay:200,max_spawn_delay:300,spawn_potentials:[{id:zombie,nbt:{"Tags":["special_mob"],data:{mob:{id:beheaded_knight}}}}]}}}