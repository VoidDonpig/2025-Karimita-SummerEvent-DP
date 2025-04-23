#> asset:object/ferocity/particle
#
# sfx
#
# @within asset:object/ferocity/

# sfx    
    execute store result entity 83a-51-1-0-0 Rotation[0] int 1 run random value -180..180
    execute store result entity 83a-51-1-0-0 Rotation[1] int 1 run random value -35..35
    execute store result storage asset: __temp__.y float 0.1 run random value 12..15
    execute as 83a-51-1-0-0 at @n[tag=ferocity.victim] rotated as 83a-51-1-0-0 positioned ^ ^ ^-1.5 run function asset:object/ferocity/repeat_particle with storage asset: __temp__

# reset
    data remove storage asset: __temp__