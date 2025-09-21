#> world:spawner/template/dungeon_1/path/random
#
# spawner template
#
# @context template

# summon spawner
    execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["spawner","only_once_spawner"],data:{asset:{id:spawner,type:normal,delay:1,spawner_health:256,required_player_range:10,spawn_count:2,max_nearby_entities:256,spawn_range:1,min_spawn_delay:200,max_spawn_delay:300,spawn_potentials:[{id:zombie,nbt:{"Tags":["special_mob"],data:{mob:{id:beheaded_knight}}}},{id:skeleton,nbt:{"Tags":["special_mob"],data:{mob:{id:wight}}}}]}}}