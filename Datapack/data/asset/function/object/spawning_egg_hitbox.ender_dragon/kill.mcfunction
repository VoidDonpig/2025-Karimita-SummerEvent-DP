#> asset:object/spawning_egg_hitbox.ender_dragon/kill
#
# kill
#
# @within asset:object/spawning_egg_hitbox.ender_dragon/damage

# kill assets
    execute as @n[type=armor_stand,tag=spawning_egg_armor_stand.ender_dragon.object,distance=..0.1] at @s run function lib:vanish/
    execute positioned ~ ~0.3 ~ as @n[type=armor_stand,tag=spawning_egg_armor_stand_2.ender_dragon.object,distance=..0.1] at @s run function lib:vanish/
    execute as @n[type=falling_block,tag=spawning_egg_egg.ender_dragon.object,distance=..0.1] at @s run function lib:vanish/
    function lib:vanish/