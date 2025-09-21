#> asset:mob/bloodthirster/death/
#
# death event
#
# @within mob:death/run

# death event
    execute unless entity @s[tag=already_dead] run playsound entity.iron_golem.death hostile @a ~ ~ ~ 0.2 0.5 0
    execute unless entity @s[tag=already_dead] run playsound entity.silverfish.death hostile @a ~ ~ ~ 0.6 0.5 0

# add dead tag
    tag @s add already_dead