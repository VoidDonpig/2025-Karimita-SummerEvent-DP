#> asset:object/arrow_dragon_tracer/hit
#
# hit process
#
# @within asset:object/arrow_dragon_tracer/

# get owner
    execute on origin run tag @s add owner

# get damage
    execute store result storage asset: __temp__.damage double 4.0 run data get entity @s damage

# damage
    function asset:object/arrow_dragon_tracer/damage with storage asset: __temp__

# remove owner tag
    execute on origin run tag @s remove owner

# kill
    kill @s