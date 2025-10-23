#> asset:object/lightning_strike/damage
#
# damage and sfx
#
# @within asset:object/lightning_strike/

# damage
    execute positioned ~-3 ~-3 ~-3 as @a[dx=5,dy=5,dz=5] run damage @s 30.0 minecraft:lightning_bolt

# sfx
    particle minecraft:dust{color:[1.000,0.976,0.310],scale:4.0} ~ ~ ~ 2.0 2.0 2.0 0 1024 normal
    particle minecraft:dust{color:[1.0,1.0,1.0],scale:4.0} ~ ~ ~ 2.0 2.0 2.0 0 256 normal
    particle minecraft:end_rod ~ ~24 ~ 0.2 12 0.2 0 1024 normal
    playsound minecraft:entity.lightning_bolt.impact hostile @a[distance=..16] ~ ~ ~ 8 1 0
    playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=..16] ~ ~ ~ 8 2 0

# remove marker
    kill @s