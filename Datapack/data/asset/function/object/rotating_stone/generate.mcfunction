#> asset:object/rotating_stone/generate
#
# generate stone
#
# @within asset:object/rotating_stone/summon

# manage score
    scoreboard players add $repeat_time temporary 1

# summon stone
    summon block_display ~ ~ ~ {view_range:2147483647,block_state:{Name:"minecraft:crying_obsidian",Properties:{}},transformation:[4.0000f,-4.0000f,-5.6569f,2.7500f,6.8990f,2.8990f,2.8284f,-6.1875f,0.6357f,-6.2925f,4.8990f,0.3750f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:1,Tags:["autokill","no_vehicle_kill"],data:{asset:{id:rotating_stone}},Tags:["asset","rotating_stone","not_init"]}

# randomize
    execute store result score $rng_0 temporary run random value -18000..18000
    execute store result score $rng_1 temporary run random value -50..60
    execute store result entity @n[type=block_display,tag=rotating_stone,tag=not_init] Rotation[0] float 0.01 run scoreboard players get $rng_0 temporary
    execute store result entity @n[type=block_display,tag=rotating_stone,tag=not_init] Rotation[1] float 1 run scoreboard players get $rng_1 temporary

# tp
    execute as @n[type=block_display,tag=rotating_stone,tag=not_init] at @s run tp @s ^ ^ ^64

# get y pos
    data modify entity @n[type=block_display,tag=rotating_stone,tag=not_init] data.asset.y_pos set from entity @n[type=block_display,tag=rotating_stone,tag=not_init] Pos[1]

# end init
    tag @n[type=block_display,tag=rotating_stone,tag=not_init] remove not_init

# repeat
    execute if score $repeat_time temporary matches ..100 run function asset:object/rotating_stone/generate

# reset
    scoreboard players reset $repeat_time temporary