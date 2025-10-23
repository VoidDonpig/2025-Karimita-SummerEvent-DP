#> asset:mob/blaze/action/burning_ray/
#
# shoot fireball randomly
#
# @within asset:mob/blaze/

# summon fireball
    execute if score $difficulty_level world matches 1..4 run summon small_fireball ^ ^ ^ {Tags:["asset","autokill","burning_lay_fireball","not_init"]}
    execute if score $difficulty_level world matches 5.. run summon fireball ^ ^ ^ {Tags:["asset","autokill","burning_lay_fireball","not_init"]}

# set rotation
    rotate @s facing entity @n[tag=target] eyes
    execute store result score $rotation_x temporary run data get entity @s Rotation[0]
    execute store result score $rotation_z temporary run data get entity @s Rotation[1]
    execute store result score $rng_0 temporary run random value -20..20
    execute store result score $rng_1 temporary run random value -5..5
    scoreboard players operation $rotation_x temporary += $rng_0 temporary
    scoreboard players operation $rotation_z temporary += $rng_1 temporary
    execute store result entity @n[tag=burning_lay_fireball,tag=not_init] Rotation[0] float 1 run scoreboard players get $rotation_x temporary
    execute store result entity @n[tag=burning_lay_fireball,tag=not_init] Rotation[1] float 1 run scoreboard players get $rotation_z temporary

# set motion
    execute as @n[tag=burning_lay_fireball,tag=not_init] at @s in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^0.5
    data modify entity @n[tag=burning_lay_fireball,tag=not_init] Motion set from entity 83a-51-1-0-0 Pos
    data modify entity @n[tag=burning_lay_fireball,tag=not_init] acceleration_power set from entity 83a-51-1-0-0 Pos

# set data
    scoreboard players set @n[tag=burning_lay_fireball,tag=not_init] autokill_timer 50
    tag @s add attacker
    data modify entity @n[tag=burning_lay_fireball,tag=not_init] Owner set from entity @n[tag=attacker] UUID
    tag @s remove attacker

# end init
    tag @n[tag=burning_lay_fireball,tag=not_init] remove not_init

# playsound
    execute if score $difficulty_level world matches 1..4 run playsound minecraft:entity.blaze.shoot hostile @a[distance=..16] ~ ~ ~ 2 1 0
    execute if score $difficulty_level world matches 5.. run playsound minecraft:entity.blaze.shoot hostile @a[distance=..16] ~ ~ ~ 2 0.5 0

# reset
    scoreboard players reset $rotation_x temporary
    scoreboard players reset $rotation_z temporary
    scoreboard players reset $rng_0 temporary
    scoreboard players reset $rng_1 temporary