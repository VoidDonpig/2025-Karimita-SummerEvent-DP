#> asset:object/dimensional_singularity/destroy
#
# break process
#
# @within function asset:object/dimensional_singularity/

# run
    setblock ~ ~ ~ air
    playsound minecraft:block.beacon.deactivate hostile @a[distance=..128] ~ ~ ~ 16 1 0
    playsound minecraft:block.glass.break hostile @a[distance=..128] ~ ~ ~ 16 0.5 0
    particle minecraft:explosion ~ ~ ~ 0.0 0.0 0.0 0 1 force
    particle minecraft:poof ~ ~ ~ 1.0 1.0 1.0 0.4 64 force
    particle minecraft:smoke ~ ~ ~ 1.0 1.0 1.0 0.4 64 force
    particle minecraft:block{block_state:"minecraft:purple_stained_glass"} ~ ~ ~ 0.5 0.5 0.5 0 256 force
    execute as @n[type=item,distance=..1] run kill @s
    kill @s