#> asset:mob/dragon_knight/death/
#
# death event
#
# @within mob:death/run

# death event
    execute unless entity @s[tag=already_dead] run playsound entity.warden.death hostile @a ~ ~ ~ 2 1 0

# add dead tag
    tag @s add already_dead