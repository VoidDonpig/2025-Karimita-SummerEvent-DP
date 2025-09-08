#> asset:object/arrow_dragon_tracer/
#
# tick
#
# @within asset:

# unless dragon then fail
    execute unless entity @e[type=ender_dragon,distance=..16] run return fail

# detect dragon
    execute if entity @s[tag=!detected_dragon] run function asset:object/arrow_dragon_tracer/detection with entity @s data.asset

# trace dragon
    execute if entity @s[tag=detected_dragon] run function asset:object/arrow_dragon_tracer/trace

# hit
    execute if entity @s[tag=hit] run function asset:object/arrow_dragon_tracer/hit