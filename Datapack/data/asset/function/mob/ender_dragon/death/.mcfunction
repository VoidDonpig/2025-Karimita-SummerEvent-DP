#> asset:mob/ender_dragon/death/
#
# death event
#
# @within mob:death/run

# death event
    scoreboard players add @s death_timer.1 1
    execute if score @s death_timer.1 matches 1 run data modify entity @s NoAI set value 1b
    execute if score @s death_timer.1 matches 1 run data modify entity @s Invulnerable set value 1b
    execute if score @s death_timer.1 matches 1 run playsound entity.ender_dragon.death hostile @a ~ ~ ~ 16 1 1

    execute if score @s death_timer.1 matches 1..179 if predicate lib:periodic/5 run particle flash ~ ~ ~ 4.0 2.0 4.0 0 16 force @a
    execute if score @s death_timer.1 matches 1..179 if predicate lib:periodic/5 run playsound item.trident.return hostile @a ~ ~ ~ 16 1 1
    execute if score @s death_timer.1 matches 1..179 if predicate lib:periodic/5 run playsound entity.ender_dragon.hurt hostile @a ~ ~ ~ 16 1 1

    execute if score @s death_timer.1 matches 180..199 if predicate lib:periodic/3 run playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~ 16 0.5 1
    execute if score @s death_timer.1 matches 180..199 if predicate lib:periodic/3 run particle explosion ~ ~ ~ 4.0 2.0 4.0 8 8 force @a

    execute if score @s death_timer.1 matches 200 run particle explosion ~ ~ ~ 0.0 0.0 0.0 128 16 force @a
    execute if score @s death_timer.1 matches 200 run playsound entity.generic.explode hostile @a ~ ~ ~ 16 0.5 1
    execute if score @s death_timer.1 matches 200 run playsound entity.generic.explode hostile @a ~ ~ ~ 16 0.5 1
    execute if score @s death_timer.1 matches 200 run playsound entity.generic.explode hostile @a ~ ~ ~ 16 0.5 1
    execute if score @s death_timer.1 matches 200 run playsound entity.generic.explode hostile @a ~ ~ ~ 16 0.5 1
    execute if score @s death_timer.1 matches 200 run playsound entity.generic.explode hostile @a ~ ~ ~ 16 0.5 1
    execute if score @s death_timer.1 matches 200 run playsound entity.generic.explode hostile @a ~ ~ ~ 16 0.5 1
    execute if score @s death_timer.1 matches 200 run playsound entity.generic.explode hostile @a ~ ~ ~ 16 0.5 1
    execute if score @s death_timer.1 matches 200 run playsound entity.generic.explode hostile @a ~ ~ ~ 16 0.5 1

    execute if score @s death_timer.1 matches 200.. run kill @s