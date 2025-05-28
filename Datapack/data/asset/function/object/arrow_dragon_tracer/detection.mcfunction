#> asset:object/arrow_dragon_tracer/detection
#
# detect dragon
#
# @within sset:object/arrow_dragon_tracer/

# detect
    $execute if entity @e[type=ender_dragon,distance=..$(dragon_tracing_range)] run tag @s add detected_dragon

# remove piercing
    $execute if entity @e[type=ender_dragon,distance=..$(dragon_tracing_range)] run data remove entity @s PierceLevel

# remove motion
    $execute if entity @e[type=ender_dragon,distance=..$(dragon_tracing_range)] run data modify entity @s Motion set value [0.0d,0.0d,0.0d]

# no gravity
    $execute if entity @e[type=ender_dragon,distance=..$(dragon_tracing_range)] run data modify entity @s NoGravity set value 1b