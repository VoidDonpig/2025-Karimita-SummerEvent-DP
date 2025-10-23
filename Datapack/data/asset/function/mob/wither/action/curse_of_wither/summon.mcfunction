#> asset:mob/wither/action/curse_of_wither/summon
#
# summon sacred orb
#
# @within asset:mob/wither/action/curse_of_wither/

# summon
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
    particle minecraft:poof ~ ~ ~ 1.0 1.0 1.0 0.4 64 force
    particle minecraft:smoke ~ ~ ~ 1.0 1.0 1.0 0.4 64 force
    particle minecraft:lava ~ ~ ~ 0.0 0.0 0.0 0 1 force
    playsound minecraft:entity.blaze.shoot hostile @a[distance=..128] ~ ~ ~ 8 0.5 0
    execute positioned ~ ~1.0 ~ summon armor_stand run function asset:mob/wither/action/curse_of_wither/summon_emerald
    kill @s