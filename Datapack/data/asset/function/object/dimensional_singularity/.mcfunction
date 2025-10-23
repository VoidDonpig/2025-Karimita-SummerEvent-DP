#> asset:object/dimensional_singularity/
#
# asset tick
#
# @within asset:

# init
    execute if entity @s[tag=!already_init] run function asset:object/dimensional_singularity/init

# destroyed block
    execute positioned ~-0.55 ~ ~-0.55 if entity @a[dx=0.1,dz=0.1] at @s run function asset:object/dimensional_singularity/destroy

# timer
    scoreboard players add @s asset_timer.1 1
    particle minecraft:dust_color_transition{from_color:[1.000,0.098,0.941],scale:1,to_color:[0.000,0.000,0.000]} ~ ~0.5 ~ 0.3 0.3 0.3 0 16 force
    particle minecraft:enchanted_hit ~ ~0.5 ~ 0.4 0.4 0.4 0 16 force
    execute if score @s asset_timer.1 matches 155 run particle minecraft:enchant ~ ~1.0 ~ 0 0 0 64 16384 force
    execute if score @s asset_timer.1 matches 1..110 run playsound minecraft:block.bell.resonate hostile @a[distance=..128] ~ ~0.5 ~ 16 0.5 0
    execute if score @s asset_timer.1 matches 1..11 run playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 16 0.5 0
    execute if score @s asset_timer.1 matches 12..23 run playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 16 0.6 0
    execute if score @s asset_timer.1 matches 24..35 run playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 16 0.7 0
    execute if score @s asset_timer.1 matches 36..47 run playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 16 0.8 0
    execute if score @s asset_timer.1 matches 48..59 run playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 16 0.9 0
    execute if score @s asset_timer.1 matches 60..72 run playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 16 1.0 0
    execute if score @s asset_timer.1 matches 73..84 run playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 16 1.1 0
    execute if score @s asset_timer.1 matches 85..96 run playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 16 1.2 0
    execute if score @s asset_timer.1 matches 97..108 run playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 16 1.3 0
    execute if score @s asset_timer.1 matches 109..120 run playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 16 1.4 0
    execute if score @s asset_timer.1 matches 121..132 run playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 16 1.5 0
    execute if score @s asset_timer.1 matches 133..144 run playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 16 1.6 0
    execute if score @s asset_timer.1 matches 145..156 run playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 16 1.7 0
    execute if score @s asset_timer.1 matches 157..168 run playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 16 1.8 0
    execute if score @s asset_timer.1 matches 169..180 run playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 16 1.9 0
    execute if score @s asset_timer.1 matches 181..185 run playsound entity.zombie_villager.converted hostile @a[distance=..128] ~ ~ ~ 16 2.0 0

    execute if score @s asset_timer.1 matches 200 run function asset:object/dimensional_singularity/explode