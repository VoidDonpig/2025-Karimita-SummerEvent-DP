#> asset:object/shard_of_prismarine/explode

# damage
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0] at @s run damage @s 4 minecraft:mob_projectile
    particle minecraft:explosion ~ ~ ~ 0.0 0.0 0.0 0 1 normal
    particle minecraft:poof ~ ~ ~ 1.0 1.0 1.0 0.4 64 normal
    particle minecraft:smoke ~ ~ ~ 1.0 1.0 1.0 0.4 64 normal
    playsound minecraft:entity.shulker_bullet.hit hostile @a[distance=..16] ~ ~ ~ 1 1 0
    kill @s