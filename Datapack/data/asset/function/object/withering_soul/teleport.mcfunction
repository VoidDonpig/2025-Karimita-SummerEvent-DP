#> asset:object/withering_soul/teleport
#
# teleport
#
# @within asset:obkect/withering_soul/

# teleport
    tp @s ^ ^ ^0.5

# hit detection
    execute on passengers at @s unless block ~ ~0.5 ~ #lib:not_solid run tag @s add hit
    execute on passengers at @s positioned ~-1.0 ~-0.5 ~-1.0 if entity @e[type=wither,dx=1,dy=1,dz=1,tag=!special_mob] run tag @s add hit