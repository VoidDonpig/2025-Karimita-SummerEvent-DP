#> asset:mob/wither_skeleton/action/back_step/fix_facing_direction
#
# fix facing direction
#
# @within asset:mob/wither_skeleton/

# add tag on target
    execute on target run tag @s add target

# summon marker
    summon minecraft:marker ~ ~ ~ {Tags:["back_step.rotation"]}

# set rotation
    execute as @n[type=minecraft:marker,tag=back_step.rotation] at @s facing entity @n[tag=target] feet run tp @s ~ ~ ~ ~ ~

# rotate
    data modify entity @s Rotation[0] set from entity @n[type=minecraft:marker,tag=back_step.rotation] Rotation[0]

# kill marker
    kill @n[type=minecraft:marker,tag=back_step.rotation]

# remove tag
    tag @n[tag=target] remove target