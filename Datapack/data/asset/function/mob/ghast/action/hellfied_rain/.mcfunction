#> asset:mob/ghast/action/hellfied_rain/
#
# action
#
# @within asset:mob/ghast/action/hellfied_rain/check

# roll
    execute store result score $roll temporary run random value 0..8

# roll
    execute if score $roll temporary matches 0 run summon fireball ~-1 ~-3 ~-1 {Motion:[0.1d,-2.0d,0.3d],Invulnerable:1b,Tags:["not_init","asset.ghast.hellfied_rain.fireball"]}
    execute if score $roll temporary matches 1 run summon fireball ~ ~-3 ~-1 {Motion:[0.0d,-1.8d,0.2d],Invulnerable:1b,Tags:["not_init","asset.ghast.hellfied_rain.fireball"]}
    execute if score $roll temporary matches 2 run summon fireball ~1 ~-3 ~-1 {Motion:[-0.2d,-2.2d,-0.1d],Invulnerable:1b,Tags:["not_init","asset.ghast.hellfied_rain.fireball"]}
    execute if score $roll temporary matches 3 run summon fireball ~-1 ~-3 ~ {Motion:[0.1d,-2.6d,-0.1d],Invulnerable:1b,Tags:["not_init","asset.ghast.hellfied_rain.fireball"]}
    execute if score $roll temporary matches 4 run summon fireball ~ ~-3 ~ {Motion:[0.3d,-2.3d,0.2d],Invulnerable:1b,Tags:["not_init","asset.ghast.hellfied_rain.fireball"]}
    execute if score $roll temporary matches 5 run summon fireball ~1 ~-3 ~ {Motion:[0.1d,-1.3d,0.4d],Invulnerable:1b,Tags:["not_init","asset.ghast.hellfied_rain.fireball"]}
    execute if score $roll temporary matches 6 run summon fireball ~-1 ~-3 ~1 {Motion:[-0.2d,-1.9d,0.0d],Invulnerable:1b,Tags:["not_init","asset.ghast.hellfied_rain.fireball"]}
    execute if score $roll temporary matches 7 run summon fireball ~ ~-3 ~1 {Motion:[-0.1d,-1.5d,-0.2d],Invulnerable:1b,Tags:["not_init","asset.ghast.hellfied_rain.fireball"]}
    execute if score $roll temporary matches 8 run summon fireball ~1 ~-3 ~1 {Motion:[0.0d,-2.2d,0.0d],Invulnerable:1b,Tags:["not_init","asset.ghast.hellfied_rain.fireball"]}

# set owner
    data modify entity @n[tag=asset.ghast.hellfied_rain.fireball,tag=not_init] Owner set from entity @n[tag=this] UUID

# finish init
    tag @n[tag=asset.ghast.hellfied_rain.fireball,tag=not_init] remove not_init

# sfx
    particle large_smoke ~ ~-3 ~ 1.2 0.0 1.2 0 32 force
    playsound entity.ghast.shoot hostile @a[distance=..100] ~ ~ ~ 4 0.9 0
    playsound entity.player.hurt_on_fire hostile @a[distance=..100] ~ ~ ~ 4 1.4 0

# reset
    scoreboard players reset $roll temporary