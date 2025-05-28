#> asset:object/dimensional_singularity/explode
#
# instakill player
#
# @within asset:object/dimensional_singularity/

# kill player
    execute as @a[distance=..256,tag=!player.exception] run kill @s
    summon minecraft:lightning_bolt ~ ~ ~
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 16 0.5 0
    playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 16 0.5 0
    playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 16 0.5 0
    playsound minecraft:block.sniffer_egg.hatch hostile @a ~ ~ ~ 16 0.5 0
    playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 16 0.5 0
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 16 1 0
    playsound minecraft:entity.allay.death hostile @a ~ ~ ~ 16 0.6 0
    particle minecraft:explosion_emitter ~ ~ ~ 0.0 0.0 0.0 0 1 force @a
    particle minecraft:explosion ~ ~ ~ 0.0 0.0 0.0 16384 16 force @a
    setblock ~ ~ ~ minecraft:air
    
    scoreboard players reset @s
    kill @s