#> asset:mob/enderling_dragon/death/
#
# death event
#
# @within mob:death/run

# kill timer
    scoreboard players add @s death_timer.1 1

# sfx
    execute if score @s death_timer.1 matches 1 run particle minecraft:explosion_emitter ~ ~1.5 ~ 0.0 0.0 0.0 0.0 1 force @a[distance=..32]
    execute if score @s death_timer.1 matches 1 run playsound entity.warden.death hostile @a ~ ~ ~ 4 0.8 0

# kill
    execute if score @s death_timer.1 matches 1.. run kill @s