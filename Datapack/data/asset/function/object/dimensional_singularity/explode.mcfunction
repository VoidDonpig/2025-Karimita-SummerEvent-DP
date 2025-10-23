#> asset:object/dimensional_singularity/explode
#
# instakill player
#
# @within asset:object/dimensional_singularity/

# kill player
    execute as @a[distance=..256,predicate=!player:is_player_exception] run kill @s
    summon minecraft:lightning_bolt ~ ~ ~
    playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..128] ~ ~ ~ 16 0.5 0
    playsound minecraft:entity.wither.hurt hostile @a[distance=..128] ~ ~ ~ 16 0.5 0
    playsound minecraft:block.sniffer_egg.hatch hostile @a[distance=..128] ~ ~ ~ 16 0.5 0
    playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=..128] ~ ~ ~ 16 0.5 0
    playsound minecraft:entity.generic.explode hostile @a[distance=..128] ~ ~ ~ 16 1 0
    playsound minecraft:entity.allay.death hostile @a[distance=..128] ~ ~ ~ 16 0.6 0
    particle minecraft:explosion_emitter ~ ~ ~ 0.0 0.0 0.0 0 1 force
    particle minecraft:explosion ~ ~ ~ 0.0 0.0 0.0 16384 16 force
    particle minecraft:poof ~ ~ ~ 1.0 1.0 1.0 0.4 64 force
    particle minecraft:smoke ~ ~ ~ 1.0 1.0 1.0 0.4 64 force
    setblock ~ ~ ~ minecraft:air
    
    scoreboard players reset @s
    kill @s