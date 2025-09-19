#> asset:mob/fallen_skeleton/init/
#
# initialize the mob
#
# @within mob:init/to

# define the data
    function asset:mob/fallen_skeleton/init/data

# ride entity
    summon slime ~ ~ ~ {Invulnerable:1b,Tags:["not_init","fallen_skeleton_vehicle","no_passenger_kill","autokill"],NoGravity:1b,Silent:1b,Size:1}
    ride @s mount @n[type=slime,tag=fallen_skeleton_vehicle,tag=not_init]
    attribute @n[type=slime,tag=fallen_skeleton_vehicle,tag=not_init] scale base set 0.0625
    effect give @n[type=slime,tag=fallen_skeleton_vehicle,tag=not_init] invisibility infinite 255 true
    tag @n[type=slime,tag=fallen_skeleton_vehicle,tag=not_init] remove not_init