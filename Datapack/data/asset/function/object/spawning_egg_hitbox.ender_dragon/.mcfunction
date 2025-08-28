#> asset:object/spawning_egg_hitbox.ender_dragon/
#
# tick
#
# @within asset:

# prevent egg fly
    tp @n[type=falling_block,tag=spawning_egg_egg.ender_dragon.object,distance=..0.1] ~ ~ ~
    data remove entity @n[type=falling_block,tag=spawning_egg_egg.ender_dragon.object] Motion

# damage
    execute unless data entity @s {AbsorptionAmount:2048.0f} run function asset:object/spawning_egg_hitbox.ender_dragon/damage

# timer
    execute positioned ~ ~0.3 ~ as @n[type=armor_stand,tag=spawning_egg_armor_stand_2.ender_dragon.object,distance=..0.1] at @s run function asset:object/spawning_egg_hitbox.ender_dragon/timer