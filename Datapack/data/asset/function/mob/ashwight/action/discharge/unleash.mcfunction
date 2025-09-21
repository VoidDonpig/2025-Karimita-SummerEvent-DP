#> asset:mob/ashwight/action/discharge/unleash
#
# unleash
#
# @within asset:mob/ashwight/

# unleash
    effect clear @s slowness
    effect clear @s resistance

    attribute @s movement_speed modifier remove minecraft:effect.slowness

    effect give @s strength infinite 3 true

# sfx
    particle large_smoke ~ ~0.2 ~ 0.0 0.0 0.0 0.2 8 normal @a[distance=..32]
    playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..32] ~ ~ ~ 1 2

# tag
    tag @s add asset.ashwight.already_discharged

# reset
    tag @s remove asset.ashwight.discharging
    scoreboard players reset @s ai_timer.1