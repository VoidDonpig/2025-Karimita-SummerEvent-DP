#> asset:mob/ender_dragon/action/lightning_strike/
#
# damage and sfx
#
# @within asset:mob/ender_dragon/action/lightning_strike/charging

# damage
    execute positioned ~-3 ~-3 ~-3 as @a[dx=5,dy=5,dz=5] run damage @s 30.0 minecraft:lightning_bolt

# sfx
    particle minecraft:dust{color:[1.000,0.976,0.310],scale:4.0} ~ ~ ~ 2.0 2.0 2.0 0 1024 force @a
    particle minecraft:dust{color:[1.0,1.0,1.0],scale:4.0} ~ ~ ~ 2.0 2.0 2.0 0 256 force @a
    particle minecraft:end_rod ~ ~24 ~ 0.2 12 0.2 0 1024 force @a
    playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 8 1 0
    playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 8 2 0

# remove marker
    kill @s