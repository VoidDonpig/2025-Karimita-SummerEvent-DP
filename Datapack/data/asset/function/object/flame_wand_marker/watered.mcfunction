#> asset:object/flame_wand_marker/watered
#
# watered
#
# @within asset:object/flame_wand_marker/

# sfx
    particle large_smoke ~ ~ ~ 0.4 0.4 0.4 0.05 64 force @a[distance=..32]
    playsound block.fire.extinguish neutral @a ~ ~ ~ 1 2 0

# kill
    kill @s