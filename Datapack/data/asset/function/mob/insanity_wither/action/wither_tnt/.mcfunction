#> asset:mob/insanity_wither/action/insanity_wither_tnt/
#
# summon tnt
#
# @context insanity_wither actions

# summon tnt
    execute if score @s mob.health matches 3376.. run summon minecraft:tnt ~ ~1.5 ~ {fuse:80,Motion:[0.0,0.0,0.0]}
    execute if score @s mob.health matches ..3375 run summon minecraft:tnt ~ ~1.5 ~ {fuse:10,Motion:[0.0,-2.0,0.0]}