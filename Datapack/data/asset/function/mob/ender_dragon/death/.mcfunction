#> asset:mob/ender_dragon/death/
#
# death event
#
# @within mob:death/run

# death event
    data modify entity @s DragonPhase set value 9

    scoreboard players add @s death_timer.1 1
    execute if score @s death_timer.1 matches 1 run particle flash ~ ~ ~ 4.0 2.0 4.0 0 16 force @a
    execute if score @s death_timer.1 matches 1 run playsound item.trident.return hostile @a ~ ~ ~ 1 1 1

    execute if score @s death_timer.1 matches 5 run scoreboard players reset @s death_timer.1