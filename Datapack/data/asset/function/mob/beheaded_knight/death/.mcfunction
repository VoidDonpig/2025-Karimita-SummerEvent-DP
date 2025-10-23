#> asset:mob/beheaded_knight/death/
#
# death event
#
# @within mob:death/run

# death event
    execute unless entity @s[tag=already_dead] run playsound entity.iron_golem.death hostile @a[distance=..16] ~ ~ ~ 0.6 0.7 0
    execute unless entity @s[tag=already_dead] run playsound entity.blaze.hurt hostile @a[distance=..16] ~ ~ ~ 0.6 0.7 0

# add dead tag
    tag @s add already_dead