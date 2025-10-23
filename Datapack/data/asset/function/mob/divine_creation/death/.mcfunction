#> asset:mob/divine_creation/death/
#
# death event
#
# @within mob:death/run

# death event
    execute unless entity @s[tag=already_dead] run playsound entity.zombie.death hostile @a[distance=..16] ~ ~ ~ 2 0.5 0

# add tag
    tag @s add already_dead