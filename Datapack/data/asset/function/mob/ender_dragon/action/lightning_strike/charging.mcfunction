#> asset:mob/ender_dragon/action/lightning_strike/charging
#
# charging sfx
#
# @within asset:mob/ender_dragon/action/phase01

# sfx
    execute if score @s ai_counter.2 matches 1 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 0.1 1
    execute if score @s ai_counter.2 matches 2 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 0.2 1
    execute if score @s ai_counter.2 matches 3 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 0.3 1
    execute if score @s ai_counter.2 matches 4 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 0.4 1
    execute if score @s ai_counter.2 matches 5 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 0.5 1
    execute if score @s ai_counter.2 matches 6 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 0.6 1
    execute if score @s ai_counter.2 matches 7 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 0.7 1
    execute if score @s ai_counter.2 matches 8 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 0.8 1
    execute if score @s ai_counter.2 matches 9 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 0.9 1
    execute if score @s ai_counter.2 matches 10 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 1.0 1
    execute if score @s ai_counter.2 matches 11 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 1.1 1
    execute if score @s ai_counter.2 matches 12 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 1.2 1
    execute if score @s ai_counter.2 matches 13 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 1.3 1
    execute if score @s ai_counter.2 matches 14 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 1.4 1
    execute if score @s ai_counter.2 matches 15 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 1.5 1
    execute if score @s ai_counter.2 matches 16 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 1.6 1
    execute if score @s ai_counter.2 matches 17 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 1.7 1
    execute if score @s ai_counter.2 matches 18 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 1.8 1
    execute if score @s ai_counter.2 matches 19 run playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 16 1.9 1

    execute if score @s ai_counter.2 matches 1..19 as @a[distance=..128] at @s run playsound item.trident.return hostile @a[distance=..128] ~ ~ ~ 1 2 0
    execute if score @s ai_counter.2 matches 1..19 as @a[distance=..128] at @s run particle electric_spark ~ ~ ~ 0.4 0.2 0.4 0.4 4 normal