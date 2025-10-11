#> asset:mob/insanity_wither/action/rapid_skull_shot/
#
# rapid skull shot
#
# @context insanity_wither action

# rotate
    rotate @s facing entity @n[tag=target]

# summon skull
    tag @s add this
    execute positioned ^1.2 ^ ^ run summon armor_stand ~ ~2.4 ~ {"Tags":["motion"]}
    execute as @n[tag=motion] at @s run function asset:mob/insanity_wither/action/rapid_skull_shot/motion
    execute positioned ^1.2 ^ ^ run function asset:mob/insanity_wither/action/rapid_skull_shot/summon with storage asset:mob

    execute positioned ^-1.2 ^ ^ run summon armor_stand ~ ~2.4 ~ {"Tags":["motion"]}
    execute as @n[tag=motion] at @s run function asset:mob/insanity_wither/action/rapid_skull_shot/motion
    execute positioned ^-1.2 ^ ^ run function asset:mob/insanity_wither/action/rapid_skull_shot/summon with storage asset:mob

    playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 2 1
    
# reset
    tag @s remove this
    data remove storage asset:mob __temp__