#> asset:object/sacred_orb/
#
# sacred emerald
#
# @within asset:

# sfx
    particle minecraft:electric_spark ~ ~ ~ 0.5 0.5 0.5 0 4 normal
    tp @s ~ ~ ~ ~10 0
    function lib:orb_movement/
    

# purify curse
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=wither_cursed,dx=0] at @s run function asset:object/sacred_orb/purify