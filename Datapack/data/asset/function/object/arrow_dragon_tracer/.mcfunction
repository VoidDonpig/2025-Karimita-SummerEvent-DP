#> asset:object/arrow_dragon_tracer/
#
# tick
#
# @within asset:

# detect dragon
    execute if entity @s[tag=!detected_dragon] run function asset:object/arrow_dragon_tracer/detection with entity @s data.asset

# trace dragon
    execute if entity @s[tag=detected_dragon] run function asset:object/arrow_dragon_tracer/trace

# hit
    execute if entity @s[tag=hit] run function asset:object/arrow_dragon_tracer/hit