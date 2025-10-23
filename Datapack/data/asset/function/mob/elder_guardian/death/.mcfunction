#> asset:mob/elder_guardian/death/
#
# death event
#
# @within mob:death/run

# death
    scoreboard players add @s death_timer.1 1
    execute if score @s death_timer.1 matches 1 run kill @s
    execute if score @s death_timer.1 matches 1 run playsound entity.elder_guardian.death hostile @a[distance=..16] ~ ~ ~ 1 1 0