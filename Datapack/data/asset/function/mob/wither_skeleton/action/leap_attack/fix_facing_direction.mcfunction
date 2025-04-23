#> asset:mob/wither_skeleton/action/leap_attack/fix_facing_direction
#
# fix facing direction
#
# @within asset:mob/wither_skeleton/

# add tag on target
    execute on target run tag @s add target

# summon marker
    summon minecraft:marker ~ ~ ~ {Tags:["leap_attack.rotation"]}

# set rotation
    execute as @n[type=minecraft:marker,tag=leap_attack.rotation] at @s facing entity @n[tag=target] feet run tp @s ~ ~ ~ ~ ~

# rotate
    data modify entity @s Rotation[0] set from entity @n[type=minecraft:marker,tag=leap_attack.rotation] Rotation[0]

# kill marker
    kill @n[type=minecraft:marker,tag=leap_attack.rotation]

# remove tag
    tag @n[tag=target] remove target