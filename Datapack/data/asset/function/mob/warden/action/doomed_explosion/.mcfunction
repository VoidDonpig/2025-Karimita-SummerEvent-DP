#> asset:mob/warden/action/doomed_explosion/
#
# doomed explosion
#
# @within asset:mob/warden/action/phase(01|02)

# add tag
    tag @s add this

# explosion
    execute as @e[type=#lib:all,tag=!this,distance=..6] run damage @s 40 explosion by @n[tag=this]

# sfx
    playsound entity.generic.explode player @a ~ ~ ~ 1 0.5 0
    particle explosion ~ ~ ~ 0.0 0.0 0.0 4 16 force @a[distance=..32]

# remove tag
    tag @s remove this