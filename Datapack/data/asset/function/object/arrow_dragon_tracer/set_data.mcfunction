#> asset:object/arrow_dragon_tracer/set_data
#
# set data
#
# @within asset:object/arrow_dragon_tracer/detection

# detect
    tag @s add detected_dragon

# remove piercing
    data remove entity @s PierceLevel

# remove motion
    data modify entity @s Motion set value [0.0d,0.0d,0.0d]

# no gravity
    data modify entity @s NoGravity set value 1b