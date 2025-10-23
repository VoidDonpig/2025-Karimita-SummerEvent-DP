#> asset:mob/wither/action/wither_impact/
#
# wither impact
#
# @context wither action

# teleport
    execute on vehicle run tp @s @n[type=marker,tag=wither_impact_marker]

# sfx
    execute at @s run particle explosion ~ ~ ~ 0.0 0.0 0.0 4 16 normal
    execute at @s run playsound entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 2 0.5 0
    execute at @s run playsound entity.wither.spawn hostile @a[distance=..16] ~ ~ ~ 2 1 0

# damage
    execute at @s as @e[type=#lib:all,type=!#lib:monster,distance=..10] run damage @s 100 explosion
    execute at @s run summon lightning_bolt ~ ~ ~
    execute at @s run summon lightning_bolt ~1 ~ ~1
    execute at @s run summon lightning_bolt ~1 ~ ~-1
    execute at @s run summon lightning_bolt ~-1 ~ ~1
    execute at @s run summon lightning_bolt ~-1 ~ ~-1

# kill marker
    execute at @s run kill @n[tag=wither_impact_marker,type=marker]