#> asset:mob/wither/base_move_1
#
# base wither move
#
# @within asset:mob/wither/act/

# move
    execute on vehicle facing entity @n[tag=target,distance=16..128] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-80 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^0.35 ~ ~
    execute on vehicle if entity @n[tag=target,distance=..16] if block ~ ~3.85 ~ #lib:not_solid run tp @s ~ ~0.35 ~
    execute on vehicle facing entity @n[tag=target,distance=..16] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-80 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^-0.05 ~ ~
    execute facing entity @n[tag=target,distance=..128] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-40 facing entity @s feet positioned as @s rotated ~ ~ run rotate @s ~ ~