#> asset:mob/super_golem/death/
#
# death event
#
# @within mob:death/run

# death
    scoreboard players add @s death_timer.1 1
    execute if score @s death_timer.1 matches 1 run kill @s
    execute if score @s death_timer.1 matches 1 run playsound entity.iron_golem.death hostile @a ~ ~ ~ 1 1 0