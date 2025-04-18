#> asset:mob/wither/action/curse_of_wither/summon
#
# summon sacred orb
#
# @within asset:mob/wither/action/curse_of_wither/

# summon
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
    particle minecraft:lava ~ ~ ~ 0.0 0.0 0.0 0 1 force @a
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0.5 0
    execute positioned ~ ~1.0 ~ summon armor_stand run function asset:mob/wither/action/curse_of_wither/summon_emerald
    kill @s