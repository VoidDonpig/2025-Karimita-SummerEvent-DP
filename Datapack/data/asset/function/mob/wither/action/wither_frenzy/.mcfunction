#> asset:mob/wither/action/wither_frenzy/
#
# wither frenzy
#
# @context wither action

# deadly attack
    tag @s add this
    execute as @e[type=#lib:all,type=!#lib:monster,distance=..10] run damage @s 10.0 minecraft:explosion by @n[tag=this]
    particle minecraft:explosion ~ ~1.5 ~ 0.0 0.0 0.0 4 8 force @a
    particle minecraft:poof ~ ~1.5 ~ 1.0 1.0 1.0 0.4 64 force @a
    particle minecraft:smoke ~ ~1.5 ~ 1.0 1.0 1.0 0.4 64 force @a
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0.5 0
    tag @s remove this