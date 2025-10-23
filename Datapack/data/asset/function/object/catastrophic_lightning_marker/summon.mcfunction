#> asset:object/catastrophic_lightning_marker/summon
#
# summon
#
# @within asset:object/catastrophic_lightning_marker/

# sfx
    particle explosion ~ ~ ~ 0 0 0 0 1 normal
    particle explosion ~1 ~ ~1 0 0 0 0 1 normal
    particle explosion ~1 ~ ~-1 0 0 0 0 1 normal
    particle explosion ~-1 ~ ~1 0 0 0 0 1 normal
    particle explosion ~-1 ~ ~-1 0 0 0 0 1 normal

# summon lightning
    summon lightning_bolt ~ ~ ~
    summon lightning_bolt ~1 ~ ~1
    summon lightning_bolt ~1 ~ ~-1
    summon lightning_bolt ~-1 ~ ~1
    summon lightning_bolt ~-1 ~ ~-1

# kill
    kill @s