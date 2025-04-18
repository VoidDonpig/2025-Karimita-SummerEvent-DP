#> asset:object/withering_soul/attacked
#
# attacked
#
# @within asset:obkect/withering_soul/

# set size
    data modify entity @s width set value 0.0
    data modify entity @s height set value 0.0

# set rotation
    execute on attacker run tag @s add attacker
    execute on vehicle run data modify entity @s Rotation set from entity @p[tag=attacker] Rotation

# remove tag
    tag @p[tag=attacker] remove attacker

# add attacked tag
    tag @s add asset.withering_soul.attacked