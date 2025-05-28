#> asset:mob/ender_dragon/action/void_apocalypse/
#
# void apocalypse
#
# @within asset:mob/ender_dragon/action/phase03

# place marker
    execute as @a[distance=..128] at @s run summon marker ~ ~ ~ {Tags:["asset","void_apocalypse_marker"],data:{asset:{id:void_apocalypse_marker}}}

    execute as @a[distance=..128] at @s run summon marker ~ ~ ~ {Tags:["asset","void_apocalypse_marker","not_init"],data:{asset:{id:void_apocalypse_marker}}}
    execute as @a[distance=..128] at @s run summon marker ~ ~ ~ {Tags:["asset","void_apocalypse_marker","not_init"],data:{asset:{id:void_apocalypse_marker}}}

# spread
    execute as @a[distance=..128] at @s run spreadplayers ~ ~ 10 16 false @e[type=marker,tag=not_init,tag=void_apocalypse_marker]

# remove tag
    tag @e[type=marker,tag=not_init,tag=void_apocalypse_marker] remove not_init