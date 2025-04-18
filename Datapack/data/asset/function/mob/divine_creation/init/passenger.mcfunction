#> asset:mob/divine_creation/init/passenger
#
# set passenger
#
# @within asset:mob/divine_creation/init/

# summon
    summon minecraft:zombified_piglin ~ ~ ~ {data:{asset:{id:divine_creation_controller}},Invulnerable:1b,Silent:1b,Tags:["autokill","no_vehicle_kill","divine_creation_controller","asset","not_init"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:scale",base:0.0625}]}
    ride @n[tag=not_init,tag=divine_creation_controller] mount @s
    tag @e[tag=not_init,tag=divine_creation_controller] remove not_init