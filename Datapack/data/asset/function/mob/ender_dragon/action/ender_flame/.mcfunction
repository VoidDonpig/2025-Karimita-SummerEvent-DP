#> asset:mob/ender_dragon/action/ender_flame/
#
# ender flame
#
# @within asset:mob/ender_dragon/action/phase01

# summon
    tag @s add Target
    execute summon minecraft:area_effect_cloud facing entity @p[tag=Target] eyes run function asset:mob/ender_dragon/action/ender_flame/shot
    tag @s remove Target

# effect
    playsound minecraft:entity.ender_dragon.shoot hostile @s ~ ~ ~ 8 1 0