#> asset:mob/ender_dragon/action/lightning_strike/charging
#
# charging sfx
#
# @within asset:mob/ender_dragon/action/phase01

# sfx
    execute if score @s ai_timer.1 matches 311 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.1 1
    execute if score @s ai_timer.1 matches 312 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.2 1
    execute if score @s ai_timer.1 matches 313 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.3 1
    execute if score @s ai_timer.1 matches 314 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.4 1
    execute if score @s ai_timer.1 matches 315 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.5 1
    execute if score @s ai_timer.1 matches 316 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.6 1
    execute if score @s ai_timer.1 matches 317 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.7 1
    execute if score @s ai_timer.1 matches 318 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.8 1
    execute if score @s ai_timer.1 matches 319 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.9 1
    execute if score @s ai_timer.1 matches 320 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.0 1
    execute if score @s ai_timer.1 matches 321 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.1 1
    execute if score @s ai_timer.1 matches 322 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.2 1
    execute if score @s ai_timer.1 matches 323 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.3 1
    execute if score @s ai_timer.1 matches 324 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.4 1
    execute if score @s ai_timer.1 matches 325 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.5 1
    execute if score @s ai_timer.1 matches 326 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.6 1
    execute if score @s ai_timer.1 matches 327 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.7 1
    execute if score @s ai_timer.1 matches 328 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.8 1
    execute if score @s ai_timer.1 matches 329 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.9 1

    execute if score @s ai_timer.1 matches 311..329 as @a[distance=..128] at @s run playsound item.trident.return hostile @a ~ ~ ~ 1 2 0
    execute if score @s ai_timer.1 matches 311..329 as @a[distance=..128] at @s run particle electric_spark ~ ~ ~ 0.2 0.0 0.2 0.4 4 force @a[distance=..32]