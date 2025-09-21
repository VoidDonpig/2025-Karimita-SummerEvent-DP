#> asset:object/death_ray/hit
#
# hit process
#
# @within asset:object/death_ray/

# sfx
    particle minecraft:explosion_emitter ~ ~ ~ 0.0 0.0 0.0 0 1 force @a
    playsound minecraft:entity.dragon_fireball.explode hostile @a ~ ~ ~ 4 1 0
    playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 4 2 0

# damage
    execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[type=#lib:all,type=!#lib:undead,dx=4,dy=4,dz=4,predicate=!player:is_player_exception] run damage @s 340282346638528860000000000000000000000 minecraft:explosion

# kill
    kill @s