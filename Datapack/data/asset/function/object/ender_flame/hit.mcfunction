#> asset:object/ender_flame/hit
#
# hit process
#
# @within asset:object/ender_flame/

# sfx
    particle minecraft:explosion_emitter ~ ~ ~ 0.0 0.0 0.0 0 1 normal
    particle minecraft:poof ~ ~ ~ 1.0 1.0 1.0 0.4 64 normal
    particle minecraft:smoke ~ ~ ~ 1.0 1.0 1.0 0.4 64 normal
    playsound minecraft:entity.dragon_fireball.explode hostile @a[distance=..16] ~ ~ ~ 4 1 0

# damage
    execute positioned ~-2.5 ~-2.5 ~-2.5 as @a[dx=4,dy=4,dz=4,predicate=!player:is_player_exception] run damage @s 16 minecraft:dragon_breath

# kill
    kill @s