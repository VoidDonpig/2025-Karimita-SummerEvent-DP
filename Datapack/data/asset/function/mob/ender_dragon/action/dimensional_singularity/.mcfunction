#> asset:mob/ender_dragon/action/phase02
#
# dimensional singularity
#
# @within asset:mob/ender_dragon/action/phase02

# summon obsidian
    execute positioned 0 100 0 summon minecraft:armor_stand run function asset:mob/ender_dragon/action/dimensional_singularity/init

# warn
    execute as @a[distance=..256] at @s run function asset:mob/ender_dragon/action/dimensional_singularity/warn