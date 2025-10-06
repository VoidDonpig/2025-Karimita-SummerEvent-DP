#> asset:mob/deleted/death/
#
# death event
#
# @within mob:death/run

# death
    scoreboard players add @s death_timer.1 1
    execute if score @s death_timer.1 matches 1 run kill @s
    execute if score @s death_timer.1 matches 1 run playsound entity.iron_golem.death hostile @a ~ ~ ~ 2 0.5 0
    execute if score @s death_timer.1 matches 1 run playsound entity.blaze.death hostile @a ~ ~ ~ 2 0.5 0