#> asset:object/lightning_wither_head/blast
#
# blast
#
# @within asset:object/lightning_wither_head/hit

# sfx
    particle dust_color_transition{from_color:[0.878,0.969,0.576],scale:1,to_color:[0.2,0.2,0.2]} ~ ~10 ~ 0.0 5 0.0 1 128 normal
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 0 normal
    particle minecraft:poof ~ ~ ~ 1.0 1.0 1.0 0.4 64 normal
    particle minecraft:smoke ~ ~ ~ 1.0 1.0 1.0 0.4 64 normal
    particle dust_pillar{block_state:"minecraft:black_stained_glass"} ~ ~0.5 ~ 0 0 0 0.5 16 normal
    particle minecraft:large_smoke ~ ~ ~ 0.2 0.2 0.2 0.1 5

# blast
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:all,type=!#lib:monster,dx=0] run damage @s 10 minecraft:lightning_bolt