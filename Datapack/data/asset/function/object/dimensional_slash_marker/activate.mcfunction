#> asset:object/dimensional_slash_marker/activate
#
# activate
#
# @within asset:object/dimensional_slash_marker/

# sfx
    playsound entity.allay.death hostile @a ~ ~ ~ 0.2 0.75 1
    playsound entity.warden.death hostile @a ~ ~ ~ 0.2 0.5 1
    playsound entity.blaze.death hostile @a ~ ~ ~ 0.2 0.5 1
    playsound entity.vex.death hostile @a ~ ~ ~ 0.2 0.5 1
    playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~ 0.2 0.5 1
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.2 2.0 1
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.2 1.0 1

    particle dust_color_transition{from_color:[0.35, 0.06, 0.5],scale:1,to_color:[0.0, 0.0, 0.0]} ~ ~10 ~ 0.0 5 0.0 1 64 force @a[distance=..32]
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 0 force @a[distance=..32]
    particle dust_pillar{block_state:"minecraft:bedrock"} ~ ~0.5 ~ 0 0 0 0.5 32 force @a[distance=..32]
    particle minecraft:large_smoke ~ ~ ~ 0.2 0.2 0.2 0.1 5
    playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 2 0.5 0
    playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 2 2 0

# damage
    execute positioned ~-0.5 0 ~-0.5 as @a[dx=0,dy=256] run damage @s 340282346638528860000000000000000000000 lightning_bolt

# kill
    kill @s