#> asset:mob/ender_dragon/action/dragonic_frenzy/shot
#
# summon fireball
#
# @within function asset:mob/ender_dragon/action/dragonic_frenzy/

# summon fireball
    summon fireball ^ ^ ^ {Tags:["asset","autokill","dragonic_frenzy_fireball","not_init"]}

# set rotation
    execute store result score $rotation_x temporary run random value -180..180
    execute store result score $rotation_z temporary run random value 30..85
    execute store result entity @n[type=fireball,tag=dragonic_frenzy_fireball,tag=not_init] Rotation[0] float 1 run scoreboard players get $rotation_x temporary
    execute store result entity @n[type=fireball,tag=dragonic_frenzy_fireball,tag=not_init] Rotation[1] float 1 run scoreboard players get $rotation_z temporary

# set motion
    execute as @n[type=fireball,tag=dragonic_frenzy_fireball,tag=not_init] at @s in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^15.0
    data modify entity @n[type=fireball,tag=dragonic_frenzy_fireball,tag=not_init] Motion set from entity 83a-51-1-0-0 Pos
    data modify entity @n[type=fireball,tag=dragonic_frenzy_fireball,tag=not_init] acceleration_power set from entity 83a-51-1-0-0 Pos

# set data
    scoreboard players set @n[type=fireball,tag=dragonic_frenzy_fireball,tag=not_init] autokill_timer 40
    tag @s add attacker
    data modify entity @n[type=fireball,tag=dragonic_frenzy_fireball,tag=not_init] Owner set from entity @n[tag=attacker] UUID
    tag @s remove attacker

# end init
    tag @n[type=fireball,tag=dragonic_frenzy_fireball,tag=not_init] remove not_init

# sfx
    playsound minecraft:entity.blaze.shoot hostile @a[distance=..128] ~ ~ ~ 8 0.5 0

# reset
    scoreboard players reset $rotation_x temporary
    scoreboard players reset $rotation_z temporary