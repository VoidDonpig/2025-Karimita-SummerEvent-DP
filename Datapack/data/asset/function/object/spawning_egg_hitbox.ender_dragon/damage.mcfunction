#> asset:object/spawning_egg_hitbox.ender_dragon/damage
#
# damage
#
# @within asset:object/spawning_egg_hitbox.ender_dragon/

# damage
    scoreboard players set $damage temporary 20480
    execute store result score $old_health temporary run data get entity @s AbsorptionAmount 10
    scoreboard players operation $damage temporary -= $old_health temporary
    execute store result score $health temporary run data get entity @n[type=armor_stand,tag=spawning_egg_armor_stand.ender_dragon.object,distance=..0.1] data.asset.data.health
    scoreboard players operation $health temporary -= $damage temporary
    execute store result entity @n[type=armor_stand,tag=spawning_egg_armor_stand.ender_dragon.object,distance=..0.1] data.asset.data.health int 1 run scoreboard players get $health temporary

# change nametag
    data modify entity 83a-51-1-0-2 text set value ["",{score:{name:"$health",objective:"temporary"},color:"white",bold:true},{text:"❤",color:"red","bold":false}]
    data modify entity @n[type=armor_stand,tag=spawning_egg_armor_stand.ender_dragon.object,distance=..0.1] CustomName set from entity 83a-51-1-0-2 text

# kill
    execute if score $health temporary matches ..0 run function asset:object/spawning_egg_hitbox.ender_dragon/kill

# reset
    scoreboard players reset $damage temporary
    scoreboard players reset $old_health temporary
    scoreboard players reset $health
    data modify entity @s AbsorptionAmount set value 2048.0f
    data modify entity @s Health set value 1024.0f