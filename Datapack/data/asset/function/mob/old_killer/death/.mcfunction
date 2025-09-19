#> asset:mob/old_killer/death/
#
# death event
#
# @within mob:death/run

# death
    scoreboard players add @s death_timer.1 1
    execute if score @s death_timer.1 matches 1 run kill @s
    execute if score @s death_timer.1 matches 1 run playsound entity.zombie.death hostile @a ~ ~ ~ 1 0.5 0