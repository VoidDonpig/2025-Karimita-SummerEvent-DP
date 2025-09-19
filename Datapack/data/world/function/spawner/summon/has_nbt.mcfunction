#> world:spawner/summon/has_nbt
#
# summon entity
#
# @within world:spawner/summon/

# summon mob
    $summon $(id) ~ ~ ~ $(nbt)

# sfx
    execute if data entity @s data.asset{type:normal} run particle poof ~ ~ ~ 0.2 0.3 0.2 0 20 force
    execute if data entity @s data.asset{type:boss} run particle soul ~ ~ ~ 0.2 0.3 0.2 0.1 20 force
    execute if data entity @s data.asset{type:boss} run particle soul_fire_flame ~ ~ ~ 0.2 0.3 0.2 0.1 20 force
    execute if data entity @s data.asset{type:boss} run playsound particle.soul_escape hostile @a ~ ~ ~ 2 0.5 0
    execute if data entity @s data.asset{type:boss} run playsound particle.soul_escape hostile @a ~ ~ ~ 2 0.5 0
    execute if data entity @s data.asset{type:boss} run playsound particle.soul_escape hostile @a ~ ~ ~ 2 0.5 0
    execute if data entity @s data.asset{type:boss} run playsound particle.soul_escape hostile @a ~ ~ ~ 2 0.5 0
    execute if data entity @s data.asset{type:boss} run playsound particle.soul_escape hostile @a ~ ~ ~ 2 0.5 0
    execute if data entity @s data.asset{type:boss} run playsound particle.soul_escape hostile @a ~ ~ ~ 2 0.5 0
    execute if data entity @s data.asset{type:boss} run playsound particle.soul_escape hostile @a ~ ~ ~ 2 0.5 0
    execute if data entity @s data.asset{type:boss} run playsound particle.soul_escape hostile @a ~ ~ ~ 2 0.5 0