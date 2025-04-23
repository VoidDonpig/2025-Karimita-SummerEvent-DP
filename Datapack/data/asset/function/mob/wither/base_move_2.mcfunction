#> asset:mob/wither/base_move_2
#
# base wither move
#
# @within asset:mob/wither/act/

# move
    execute on vehicle facing entity @n[tag=target,distance=8..128] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-80 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^0.1 ~ ~
    execute on vehicle if entity @n[tag=target,distance=..8] if block ~ ~-0.05 ~ #lib:not_solid run tp @s ~ ~-0.05 ~
    execute on vehicle facing entity @n[tag=target,distance=..8] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-80 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^-0.1 ~ ~
    execute facing entity @n[tag=target,distance=..128] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-40 facing entity @s feet positioned as @s rotated ~ ~ run rotate @s ~ ~