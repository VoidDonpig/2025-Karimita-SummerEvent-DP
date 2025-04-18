#> asset:mob/blaze/action/infernal_healing/
#
# deal damage and heal oneself
#
# @within asset:mob/blaze/

# healing
    tag @s add attacker
    execute as @a[distance=..4] run damage @s 10.0 minecraft:fireball by @n[tag=attacker]
    effect give @s minecraft:instant_health 1 5 true
    tag @s remove attacker

# sfx
    particle minecraft:flame ~ ~ ~ 1 1 1 1.6 32 force
    particle minecraft:heart ~ ~1.8 ~ 0 0 0 0 1 force
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0.5 0