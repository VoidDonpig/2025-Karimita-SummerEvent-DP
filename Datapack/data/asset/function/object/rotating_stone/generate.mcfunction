#> asset:object/rotating_stone/generate
#
# generate stone
#
# @within asset:object/rotating_stone/summon

# manage score
    scoreboard players add $repeat_time temporary 1

# summon stone
    summon block_display ~ ~ ~ {view_range:2147483647,block_state:{Name:"minecraft:crying_obsidian",Properties:{}},transformation:[4.0000f,0.0000f,0.0000f,-2.0000f,0.0000f,4.0000f,0.0000f,-2.0000f,0.0000f,0.0000f,4.0000f,-2.0000f,0.0000f,0.0000f,0.0000f,0.330f],teleport_duration:4,Tags:["autokill","no_vehicle_kill"],data:{asset:{id:rotating_stone}},Tags:["asset","rotating_stone","not_init"]}

# randomize
    execute store result score $rng_0 temporary run random value -180..180
    execute store result score $rng_1 temporary run random value -50..50
    execute store result entity @n[type=block_display,tag=rotating_stone,tag=not_init] Rotation[0] float 1 run scoreboard players get $rng_0 temporary
    execute store result entity @n[type=block_display,tag=rotating_stone,tag=not_init] Rotation[1] float 1 run scoreboard players get $rng_1 temporary

# tp
    execute as @n[type=block_display,tag=rotating_stone,tag=not_init] at @s run tp @s ^ ^ ^96

# randomize
    execute store result score $rng_0 temporary run random value -180..180
    execute store result score $rng_1 temporary run random value -90..90
    execute store result entity @n[type=block_display,tag=rotating_stone,tag=not_init] Rotation[0] float 1 run scoreboard players get $rng_0 temporary
    execute store result entity @n[type=block_display,tag=rotating_stone,tag=not_init] Rotation[1] float 1 run scoreboard players get $rng_1 temporary

# end init
    tag @n[type=block_display,tag=rotating_stone,tag=not_init] remove not_init

# repeat
    execute if score $repeat_time temporary matches ..100 run function asset:object/rotating_stone/generate

# reset
    scoreboard players reset $repeat_time temporary
    scoreboard players reset $rng_0 temporary
    scoreboard players reset $rng_1 temporary