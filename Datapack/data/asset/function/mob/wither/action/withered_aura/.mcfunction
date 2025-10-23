#> asset:mob/wither/action/withered_aura/
#
# withered aura
#
# @context wither action

# tag
    tag @s add this

# particle
    particle minecraft:end_rod ~ ~2 ~ 0.7 1 0.7 0 1 normal
    particle minecraft:large_smoke ~ ~2 ~ 0.7 1 0.7 0 1 normal
    particle trial_spawner_detection_ominous ~ ~2 ~ 0.7 1 0.7 0 5 normal
    particle entity_effect{color:[0.000,1.000,1.000,1.00]} ~ ~2 ~ 0.7 1 0.7 0.0 5 normal

# damage
    execute positioned ~ ~1.5 ~ as @e[type=#lib:all,type=!#lib:monster,distance=..2.5] run damage @s 10 mob_attack by @n[tag=this]

# reset
    tag @s remove this