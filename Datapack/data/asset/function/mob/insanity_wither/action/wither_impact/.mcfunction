#> asset:mob/insanity_wither/action/insanity_wither_impact/
#
# insanity_wither impact
#
# @context insanity_wither action

# teleport
    execute on vehicle run tp @s @n[type=marker,tag=insanity_wither_impact_marker]

# sfx
    execute at @s run particle explosion ~ ~ ~ 0.0 0.0 0.0 4 16 force @a[distance=..32]
    execute at @s run playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.5 0
    execute at @s run playsound entity.wither.spawn hostile @a ~ ~ ~ 2 1 0

# damage
    execute at @s as @e[type=#lib:all,type=!#lib:monster,distance=..10] run damage @s 100 explosion
    execute at @s run summon lightning_bolt ~ ~ ~
    execute at @s run summon lightning_bolt ~1 ~ ~1
    execute at @s run summon lightning_bolt ~1 ~ ~-1
    execute at @s run summon lightning_bolt ~-1 ~ ~1
    execute at @s run summon lightning_bolt ~-1 ~ ~-1

# kill marker
    execute at @s run kill @n[tag=insanity_wither_impact_marker,type=marker]