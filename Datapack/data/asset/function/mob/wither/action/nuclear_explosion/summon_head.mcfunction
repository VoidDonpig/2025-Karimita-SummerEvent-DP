#> asset:mob/wither/action/nuclear_explosion/summon_head
#
# summon head
#
# @within asset:mob/wither/action/phase04

# summon wither skull
    summon wither_skull ^ ^ ^ {Tags:["asset","autokill","nuclear_frenzy_wither_skull","not_init"]}

# set rotation
    execute store result score $rng_0 temporary run random value -180..180
    execute store result score $rng_1 temporary run random value -90..90
    scoreboard players operation $rotation_x temporary += $rng_0 temporary
    scoreboard players operation $rotation_z temporary += $rng_1 temporary
    execute store result entity @n[type=wither_skull,tag=nuclear_frenzy_wither_skull,tag=not_init] Rotation[0] float 1 run scoreboard players get $rotation_x temporary
    execute store result entity @n[type=wither_skull,tag=nuclear_frenzy_wither_skull,tag=not_init] Rotation[1] float 1 run scoreboard players get $rotation_z temporary

# set motion
    execute as @n[type=wither_skull,tag=nuclear_frenzy_wither_skull,tag=not_init] at @s in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^0.5
    data modify entity @n[type=wither_skull,tag=nuclear_frenzy_wither_skull,tag=not_init] Motion set from entity 83a-51-1-0-0 Pos

# set data
    scoreboard players set @n[type=wither_skull,tag=nuclear_frenzy_wither_skull,tag=not_init] autokill_timer 50
    tag @s add attacker
    data modify entity @n[type=wither_skull,tag=nuclear_frenzy_wither_skull,tag=not_init] Owner set from entity @n[tag=attacker] UUID
    tag @s remove attacker

# end init
    damage @n[type=wither_skull,tag=nuclear_frenzy_wither_skull,tag=not_init] 0.0
    tag @n[type=wither_skull,tag=nuclear_frenzy_wither_skull,tag=not_init] remove not_init

# reset
    scoreboard players reset $rotation_x temporary
    scoreboard players reset $rotation_z temporary
    scoreboard players reset $rng_0 temporary
    scoreboard players reset $rng_1 temporary