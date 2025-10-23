#> asset:mob/voidling_zealot/death/
#
# death event
#
# @within mob:death/run

# timer
    scoreboard players add @s death_timer.1 1

# death sound
    execute if score @s death_timer.1 matches 1 run playsound entity.enderman.death hostile @a[distance=..16] ~ ~ ~ 2 0.5 0
    execute if score @s death_timer.1 matches 1 run playsound entity.blaze.death hostile @a[distance=..16] ~ ~ ~ 2 0.75 0
    execute if score @s death_timer.1 matches 1 run playsound entity.warden.death hostile @a[distance=..16] ~ ~ ~ 2 1.5 0
    execute if score @s death_timer.1 matches 1 run playsound entity.wither.death hostile @a[distance=..16] ~ ~ ~ 1.4 1.4 0