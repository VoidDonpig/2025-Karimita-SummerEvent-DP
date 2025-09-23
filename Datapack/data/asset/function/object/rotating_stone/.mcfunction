#> asset:object/rotating_stone/
#
# rotating stone
#
# @within asset:

# rotate
    execute facing entity @n[type=marker,distance=..128,tag=asset.rotating_stone.center] feet if entity @n[type=marker,distance=96..128,tag=asset.rotating_stone.center] rotated ~ 0 run tp @s ^4 ^ ^1
    execute facing entity @n[type=marker,distance=..128,tag=asset.rotating_stone.center] feet if entity @n[type=marker,distance=..96,tag=asset.rotating_stone.center] run tp @s ^4 ^ ^

# kill if no marker
    execute unless entity @n[type=marker,tag=asset.rotating_stone.center,distance=..128] run kill @s