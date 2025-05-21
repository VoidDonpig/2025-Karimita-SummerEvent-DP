#> asset:mob/ender_dragon/action/lightning_strike/charging
#
# charging sfx
#
# @within asset:mob/ender_dragon/action/phase01

# sfx
    execute if score @s ai_timer.1 matches 201 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.1 1
    execute if score @s ai_timer.1 matches 202 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.2 1
    execute if score @s ai_timer.1 matches 203 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.3 1
    execute if score @s ai_timer.1 matches 204 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.4 1
    execute if score @s ai_timer.1 matches 205 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.5 1
    execute if score @s ai_timer.1 matches 206 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.6 1
    execute if score @s ai_timer.1 matches 207 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.7 1
    execute if score @s ai_timer.1 matches 208 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.8 1
    execute if score @s ai_timer.1 matches 209 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 0.9 1
    execute if score @s ai_timer.1 matches 210 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.0 1
    execute if score @s ai_timer.1 matches 211 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.1 1
    execute if score @s ai_timer.1 matches 212 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.2 1
    execute if score @s ai_timer.1 matches 213 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.3 1
    execute if score @s ai_timer.1 matches 214 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.4 1
    execute if score @s ai_timer.1 matches 215 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.5 1
    execute if score @s ai_timer.1 matches 216 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.6 1
    execute if score @s ai_timer.1 matches 217 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.7 1
    execute if score @s ai_timer.1 matches 218 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.8 1
    execute if score @s ai_timer.1 matches 219 run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 16 1.9 1

    execute if score @s ai_timer.1 matches 201..219 as @a[distance=..128] at @s run playsound item.trident.return hostile @a ~ ~ ~ 1 2 0
    execute if score @s ai_timer.1 matches 201..219 as @a[distance=..128] at @s run particle electric_spark ~ ~ ~ 0.2 0.0 0.2 0.4 4 force @a[distance=..32]