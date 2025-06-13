#> asset:mob/ender_dragon/action/mega_impact/damage
#
# add damage
#
# @within asset:mob/ender_dragon/action/mega_impact/

# add damage
    $damage @s $(damage) out_of_world

# sfx
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    particle dust_color_transition{from_color:[1,1,1],scale:2,to_color:[0.2,0.2,0.2]} ~ ~10 ~ 0.4 5 0.4 1 4096 force @a[distance=..32]
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 0 force @a[distance=..32]
    particle dust_pillar{block_state:"minecraft:black_stained_glass"} ~ ~0.5 ~ 0 0 0 0.5 256 force @a[distance=..32]
    particle minecraft:large_smoke ~ ~ ~ 0.2 0.2 0.2 0.1 16