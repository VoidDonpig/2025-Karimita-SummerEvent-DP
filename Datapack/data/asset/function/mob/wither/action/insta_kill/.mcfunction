#> asset:mob/wither/action/insta_kill/
#
# wither frenzy
#
# @context wither action

# deadly attack
    tag @s add this
    execute as @e[type=#lib:all,type=!#lib:monster,distance=..8] run damage @s 340282346638528860000000000000000000000 minecraft:explosion by @n[tag=this]
    particle minecraft:explosion ~ ~1.5 ~ 0.0 0.0 0.0 4 8 force @a
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0.5 0
    tag @s remove this