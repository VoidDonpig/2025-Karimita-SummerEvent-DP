#> asset:obkect/withering_soul/
#
# asset tick
#
# @within asset:

# attack detection
    execute if data entity @s attack run function asset:object/withering_soul/attacked

# teleport
    execute if entity @s[tag=asset.withering_soul.attacked] on vehicle at @s run function asset:object/withering_soul/teleport

# hit
    execute if entity @s[tag=hit] on vehicle at @s run function asset:object/withering_soul/blast