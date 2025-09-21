#> world:dungeon/exit/check
#
# check whether monster existed
#
# @within world:

# check
    execute positioned ~-10 ~-1 ~-10 unless entity @e[type=marker,tag=spawner,dx=19,dy=9,dz=19] run tag @s add activated
    execute positioned ~-10 ~-1 ~-10 if entity @n[type=#lib:monster,dx=19,dy=9,dz=19] run tag @s remove activated

# sfx
    execute unless entity @s[tag=activated] run particle ash ~ ~ ~ 1 1 1 0.03 36 force

# tick
    execute if entity @s[tag=activated] run function world:dungeon/exit/tick