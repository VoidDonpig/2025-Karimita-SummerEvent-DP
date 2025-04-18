#> asset:mob/warden/death/
#
# death event
#
# @within mob:death/run

# death event
    scoreboard players add @s death_timer.1 1
    execute if score @s death_timer.1 matches 1 run data modify entity @s NoAI set value 1b
    execute if score @s death_timer.1 matches 1 run data modify entity @s Invulnerable set value 1b
    execute if score @s death_timer.1 matches 1 run data modify entity @s Silent set value 1b
    execute if score @s death_timer.1 matches 1 run particle flash ~ ~1.5 ~ 0.0 0.0 0.0 0 1 force @a
    execute if score @s death_timer.1 matches 20..60 run particle flash ~ ~1.5 ~ 0.2 0.2 0.2 0 1 force @a
    execute if score @s death_timer.1 matches 20..60 run playsound block.sculk_shrieker.shriek hostile @a ~ ~ ~ 1 2 0
    execute if score @s death_timer.1 matches 20..60 run playsound entity.allay.death hostile @a ~ ~ ~ 0.5 0.5 0
    execute if score @s death_timer.1 matches 1..60 run particle dust{color:[0.055,0.455,0.502],scale:1} ~ ~1.5 ~ 0.8 0.8 0.8 0 32 force @a
    execute if score @s death_timer.1 matches 1 run playsound entity.warden.agitated hostile @a ~ ~ ~ 1 2 0
    execute if score @s death_timer.1 matches 1 run playsound entity.iron_golem.repair hostile @a ~ ~ ~ 1 0.5 0
    execute if score @s death_timer.1 matches 1 run playsound entity.iron_golem.repair hostile @a ~ ~ ~ 1 0.5 0
    execute if score @s death_timer.1 matches 1 run playsound entity.iron_golem.repair hostile @a ~ ~ ~ 1 0.5 0
    execute if score @s death_timer.1 matches 1 run playsound item.trident.return hostile @a ~ ~ ~ 1 2 0
    execute if score @s death_timer.1 matches 60 run particle sonic_boom ~ ~1.5 ~ 1.0 1.0 1.0 16 16 force @a
    execute if score @s death_timer.1 matches 60 run particle explosion ~ ~1.5 ~ 0.0 0.0 0.0 16 16 force @a
    execute if score @s death_timer.1 matches 60 as @a[distance=..10] run damage @s 4444 explosion
    execute if score @s death_timer.1 matches 60 run particle soul ~ ~1.5 ~ 0.0 0.0 0.0 0.2 32 force @a
    execute if score @s death_timer.1 matches 60 run playsound entity.ender_dragon.growl hostile @a ~ ~ ~ 0.5 2 1
    execute if score @s death_timer.1 matches 60 run playsound block.sculk_shrieker.shriek hostile @a ~ ~ ~ 1 0.5 1
    execute if score @s death_timer.1 matches 60 run playsound entity.generic.explode hostile @a ~ ~ ~ 1 0.5 1
    execute if score @s death_timer.1 matches 60 run kill @s

    execute if score @s death_timer.1 matches 20 run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5 1
    execute if score @s death_timer.1 matches 22 run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.6 1
    execute if score @s death_timer.1 matches 24 run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.7 1
    execute if score @s death_timer.1 matches 26 run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.8 1
    execute if score @s death_timer.1 matches 28 run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.9 1
    execute if score @s death_timer.1 matches 30 run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.0 1
    execute if score @s death_timer.1 matches 32 run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.1 1
    execute if score @s death_timer.1 matches 34 run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.2 1
    execute if score @s death_timer.1 matches 36 run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.3 1
    execute if score @s death_timer.1 matches 38 run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.4 1
    execute if score @s death_timer.1 matches 40 run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.5 1
    execute if score @s death_timer.1 matches 42 run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.6 1
    execute if score @s death_timer.1 matches 44 run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.7 1
    execute if score @s death_timer.1 matches 46 run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.8 1
    execute if score @s death_timer.1 matches 48 run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.9 1
    execute if score @s death_timer.1 matches 50..59 run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 2.0 1