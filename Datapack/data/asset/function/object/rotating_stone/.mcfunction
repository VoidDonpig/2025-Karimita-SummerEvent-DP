#> asset:object/rotating_stone/
#
# rotating stone
#
# @within asset:

# rotate
    execute facing entity @n[type=marker,distance=..128,tag=asset.rotating_stone.center] feet if entity @n[type=marker,distance=64..128,tag=asset.rotating_stone.center] run tp @s ^2 ^ ^0.5 ~ ~
    execute facing entity @n[type=marker,distance=..128,tag=asset.rotating_stone.center] feet if entity @n[type=marker,distance=..64,tag=asset.rotating_stone.center] run tp @s ^2 ^ ^ ~ ~

# y pos
    data modify entity @s Pos[1] set from entity @s data.asset.y_pos

# kill if no marker
    execute unless entity @n[type=marker,tag=asset.rotating_stone.center,distance=..128] run kill @s