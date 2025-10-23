#> asset:object/rotten_bullet/hit
#
# hit process
#
# @within asset:object/rotten_bullet/

# sfx
    particle minecraft:explosion_emitter ~ ~ ~ 0.0 0.0 0.0 0 1 normal
    particle minecraft:poof ~ ~ ~ 1.0 1.0 1.0 0.4 64 normal
    particle minecraft:smoke ~ ~ ~ 1.0 1.0 1.0 0.4 64 normal
    playsound minecraft:entity.dragon_fireball.explode hostile @a[distance=..16] ~ ~ ~ 4 1 0
    playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=..16] ~ ~ ~ 4 2 0

# damage
    execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[type=#lib:all,type=!#lib:undead,dx=4,dy=4,dz=4,predicate=!player:is_player_exception] run damage @s 10 minecraft:explosion

# kill
    kill @s