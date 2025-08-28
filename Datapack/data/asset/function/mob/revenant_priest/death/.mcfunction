#> asset:mob/wither/death/
#
# death event
#
# @within mob:death/run

# death event
    scoreboard players add @s death_timer.1 1

    kill @s[scores={death_timer.1=1}]

    execute if score @s death_timer.1 matches 1 run playsound entity.evoker.death hostile @a[distance=..32] ~ ~ ~ 2 0.5 0
    execute if score @s death_timer.1 matches 1 run playsound entity.zombie_villager.death hostile @a[distance=..32] ~ ~ ~ 2 0.5 0
    execute if score @s death_timer.1 matches 1 run playsound entity.ravager.death hostile @a[distance=..32] ~ ~ ~ 2 0.5 0