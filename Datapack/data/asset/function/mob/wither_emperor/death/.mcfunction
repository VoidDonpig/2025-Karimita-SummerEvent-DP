#> asset:mob/wither_emperor/death/
#
# death event
#
# @within mob:death/run

# death event
    scoreboard players add @s death_timer.1 1
    scoreboard players add @s death_timer.2 1

    execute if score @s death_timer.1 matches 1 run data modify entity @s NoAI set value 1b
    execute if score @s death_timer.1 matches 1 run data modify entity @s Silent set value 1b
    execute if score @s death_timer.1 matches 1 run data modify entity @s Invulnerable set value 1b

    execute unless score @s death_timer.1 matches 200.. if score @s death_timer.2 matches 1 run playsound entity.wither.hurt hostile @a[distance=..16] ~ ~ ~ 16 0.8 0
    execute unless score @s death_timer.1 matches 200.. if score @s death_timer.2 matches 1 run particle explosion_emitter ~ ~9.0 ~ 16.0 16.0 16.0 0 256 normal

    execute if score @s death_timer.2 matches 5 run scoreboard players reset @s death_timer.2

    execute if score @s death_timer.1 matches 200 run playsound entity.wither.death hostile @a[distance=..16] ~ ~ ~ 16 0.5 0
    execute if score @s death_timer.1 matches 200 run particle explosion_emitter ~ ~9.0 ~ 16.0 16.0 16.0 0 8192 normal
    execute if score @s death_timer.1 matches 200 run kill @s
    execute if score @s death_timer.1 matches 200 run kill @e[type=item,distance=..4,nbt={Item:{id:"minecraft:nether_star"}}]