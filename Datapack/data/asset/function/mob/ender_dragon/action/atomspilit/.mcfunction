#> asset:mob/ender_dragon/action/atomspilit/
#
# atomspilit
#
# @within asset:mob/ender_dragon/action/phase01

# aoe
    tag @s add this
    execute as @a[distance=..14.5] run damage @s 20 mob_attack by @n[tag=this]

# sfx
    particle witch ~ ~ ~ 8 8 8 0 64 force @a

# reset
    tag @s remove this