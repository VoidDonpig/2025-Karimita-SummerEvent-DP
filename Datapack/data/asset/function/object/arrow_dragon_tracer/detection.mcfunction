#> asset:object/arrow_dragon_tracer/detection
#
# detect dragon
#
# @within asset:object/arrow_dragon_tracer/

# detect
    $execute if entity @e[type=ender_dragon,distance=..$(dragon_tracing_range)] run function asset:object/arrow_dragon_tracer/set_data