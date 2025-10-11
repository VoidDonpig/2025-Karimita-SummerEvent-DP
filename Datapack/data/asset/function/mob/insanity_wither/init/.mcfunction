#> asset:mob/insanity_wither/init/
#
# initialize the mob
#
# @within mob:init/to

# define the data
    function asset:mob/insanity_wither/init/data

# ride entity
    summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,Tags:["not_init","insanity_wither_vehicle","no_passenger_kill","autokill"]}
    ride @s mount @n[type=armor_stand,tag=insanity_wither_vehicle,tag=not_init]
    tag @n[type=armor_stand,tag=insanity_wither_vehicle,tag=not_init] remove not_init