#> asset:mob/enderling_dragon/death/
#
# death event
#
# @within mob:death/run

# kill timer
    scoreboard players add @s death_timer.1 1

# sfx
    execute if score @s death_timer.1 matches 1 run particle minecraft:explosion_emitter ~ ~1.5 ~ 0.0 0.0 0.0 0.0 1 force
    execute if score @s death_timer.1 matches 1 run particle minecraft:poof ~ ~ ~ 1.0 1.0 1.0 0.4 64 force
    execute if score @s death_timer.1 matches 1 run particle minecraft:smoke ~ ~ ~ 1.0 1.0 1.0 0.4 64 force
    execute if score @s death_timer.1 matches 1 run playsound entity.warden.death hostile @a[distance=..128] ~ ~ ~ 8 0.8 0

# kill
    execute if score @s death_timer.1 matches 1.. run kill @s