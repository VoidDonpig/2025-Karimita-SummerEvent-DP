#> asset:object/death_ray/
#
# asset tick
#
# @within asset:

# timer
    scoreboard players add @s asset_timer.1 1

# facing entity
    execute if score @s asset_timer.1 matches ..39 run rotate @s facing entity @n[type=#lib:all,type=!#lib:undead,predicate=!player:is_player_exception]

# sfx
    execute if score @s asset_timer.1 matches ..39 run particle white_smoke ~ ~ ~ 0.4 0.4 0.4 0.2 32 force
    execute if score @s asset_timer.1 matches ..39 run particle large_smoke ~ ~ ~ 0.4 0.4 0.4 0.2 32 force
    execute if predicate lib:periodic/4 run playsound block.fire.ambient hostile @a[distance=..16] ~ ~ ~ 2 0.5 1
    execute if score @s asset_timer.1 matches 40 run playsound entity.shulker.shoot hostile @a[distance=..128] ~ ~ ~ 4 0.5 1

# tp
    execute if score @s asset_timer.1 matches 40.. run function asset:object/death_ray/teleport

# hit
    execute if entity @s[tag=hitted] at @s run function asset:object/death_ray/hit

# kill
    kill @s[scores={asset_timer.1=60..}]