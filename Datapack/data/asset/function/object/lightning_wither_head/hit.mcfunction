#> asset:object/lightning_wither_head/hit
#
# hit process
#
# @within asset:object/lightning_wither_head/

# blast
    execute positioned ~ ~ ~ run function asset:object/lightning_wither_head/blast
    execute positioned ~1 ~ ~1 run function asset:object/lightning_wither_head/blast
    execute positioned ~2 ~ ~2 run function asset:object/lightning_wither_head/blast
    execute positioned ~3 ~ ~3 run function asset:object/lightning_wither_head/blast
    execute positioned ~4 ~ ~4 run function asset:object/lightning_wither_head/blast
    execute positioned ~5 ~ ~5 run function asset:object/lightning_wither_head/blast
    execute positioned ~6 ~ ~6 run function asset:object/lightning_wither_head/blast
    execute positioned ~7 ~ ~7 run function asset:object/lightning_wither_head/blast
    execute positioned ~8 ~ ~8 run function asset:object/lightning_wither_head/blast
    execute positioned ~9 ~ ~9 run function asset:object/lightning_wither_head/blast
    execute positioned ~10 ~ ~10 run function asset:object/lightning_wither_head/blast
    execute positioned ~11 ~ ~11 run function asset:object/lightning_wither_head/blast
    execute positioned ~12 ~ ~12 run function asset:object/lightning_wither_head/blast
    execute positioned ~13 ~ ~13 run function asset:object/lightning_wither_head/blast
    execute positioned ~14 ~ ~14 run function asset:object/lightning_wither_head/blast
    execute positioned ~15 ~ ~15 run function asset:object/lightning_wither_head/blast
    execute positioned ~16 ~ ~16 run function asset:object/lightning_wither_head/blast
    execute positioned ~-1 ~ ~1 run function asset:object/lightning_wither_head/blast
    execute positioned ~-2 ~ ~2 run function asset:object/lightning_wither_head/blast
    execute positioned ~-3 ~ ~3 run function asset:object/lightning_wither_head/blast
    execute positioned ~-4 ~ ~4 run function asset:object/lightning_wither_head/blast
    execute positioned ~-5 ~ ~5 run function asset:object/lightning_wither_head/blast
    execute positioned ~-6 ~ ~6 run function asset:object/lightning_wither_head/blast
    execute positioned ~-7 ~ ~7 run function asset:object/lightning_wither_head/blast
    execute positioned ~-8 ~ ~8 run function asset:object/lightning_wither_head/blast
    execute positioned ~-9 ~ ~9 run function asset:object/lightning_wither_head/blast
    execute positioned ~-10 ~ ~10 run function asset:object/lightning_wither_head/blast
    execute positioned ~-11 ~ ~11 run function asset:object/lightning_wither_head/blast
    execute positioned ~-12 ~ ~12 run function asset:object/lightning_wither_head/blast
    execute positioned ~-13 ~ ~13 run function asset:object/lightning_wither_head/blast
    execute positioned ~-14 ~ ~14 run function asset:object/lightning_wither_head/blast
    execute positioned ~-15 ~ ~15 run function asset:object/lightning_wither_head/blast
    execute positioned ~-16 ~ ~16 run function asset:object/lightning_wither_head/blast
    execute positioned ~1 ~ ~-1 run function asset:object/lightning_wither_head/blast
    execute positioned ~2 ~ ~-2 run function asset:object/lightning_wither_head/blast
    execute positioned ~3 ~ ~-3 run function asset:object/lightning_wither_head/blast
    execute positioned ~4 ~ ~-4 run function asset:object/lightning_wither_head/blast
    execute positioned ~5 ~ ~-5 run function asset:object/lightning_wither_head/blast
    execute positioned ~6 ~ ~-6 run function asset:object/lightning_wither_head/blast
    execute positioned ~7 ~ ~-7 run function asset:object/lightning_wither_head/blast
    execute positioned ~8 ~ ~-8 run function asset:object/lightning_wither_head/blast
    execute positioned ~9 ~ ~-9 run function asset:object/lightning_wither_head/blast
    execute positioned ~10 ~ ~-10 run function asset:object/lightning_wither_head/blast
    execute positioned ~11 ~ ~-11 run function asset:object/lightning_wither_head/blast
    execute positioned ~12 ~ ~-12 run function asset:object/lightning_wither_head/blast
    execute positioned ~13 ~ ~-13 run function asset:object/lightning_wither_head/blast
    execute positioned ~14 ~ ~-14 run function asset:object/lightning_wither_head/blast
    execute positioned ~15 ~ ~-15 run function asset:object/lightning_wither_head/blast
    execute positioned ~16 ~ ~-16 run function asset:object/lightning_wither_head/blast
    execute positioned ~-1 ~ ~-1 run function asset:object/lightning_wither_head/blast
    execute positioned ~-2 ~ ~-2 run function asset:object/lightning_wither_head/blast
    execute positioned ~-3 ~ ~-3 run function asset:object/lightning_wither_head/blast
    execute positioned ~-4 ~ ~-4 run function asset:object/lightning_wither_head/blast
    execute positioned ~-5 ~ ~-5 run function asset:object/lightning_wither_head/blast
    execute positioned ~-6 ~ ~-6 run function asset:object/lightning_wither_head/blast
    execute positioned ~-7 ~ ~-7 run function asset:object/lightning_wither_head/blast
    execute positioned ~-8 ~ ~-8 run function asset:object/lightning_wither_head/blast
    execute positioned ~-9 ~ ~-9 run function asset:object/lightning_wither_head/blast
    execute positioned ~-10 ~ ~-10 run function asset:object/lightning_wither_head/blast
    execute positioned ~-11 ~ ~-11 run function asset:object/lightning_wither_head/blast
    execute positioned ~-12 ~ ~-12 run function asset:object/lightning_wither_head/blast
    execute positioned ~-13 ~ ~-13 run function asset:object/lightning_wither_head/blast
    execute positioned ~-14 ~ ~-14 run function asset:object/lightning_wither_head/blast
    execute positioned ~-15 ~ ~-15 run function asset:object/lightning_wither_head/blast
    execute positioned ~-16 ~ ~-16 run function asset:object/lightning_wither_head/blast

# sound
    playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..32] ~ ~ ~ 2 0.5 0
    playsound minecraft:entity.lightning_bolt.thunder neutral @a[distance=..32] ~ ~ ~ 2 2 0

# kill
    kill @s