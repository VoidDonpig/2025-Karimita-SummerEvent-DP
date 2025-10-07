#> asset:object/dimensional_singularity/destroy
#
# break process
#
# @within function asset:object/dimensional_singularity/

# run
    setblock ~ ~ ~ air
    playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 16 1 0
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 16 0.5 0
    particle minecraft:explosion ~ ~ ~ 0.0 0.0 0.0 0 1 force @a
    particle minecraft:poof ~ ~ ~ 1.0 1.0 1.0 0.4 64 force @a
    particle minecraft:smoke ~ ~ ~ 1.0 1.0 1.0 0.4 64 force @a
    particle minecraft:block{block_state:"minecraft:purple_stained_glass"} ~ ~ ~ 0.5 0.5 0.5 0 256 force @a
    execute as @n[type=item,distance=..1] run kill @s
    kill @s