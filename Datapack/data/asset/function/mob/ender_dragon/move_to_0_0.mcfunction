#> asset:mob/ender_dragon/move_to_0_0
#
# movement
#
# @within asset:mob/ender_dragon/action/phase03

# movement    
    execute on vehicle facing 0 100 0 rotated ~ ~ run tp @s ~ ~ ~

# sfx
    execute at @s run playsound entity.ender_dragon.hurt hostile @a[distance=..128] ~ ~ ~ 16 0.5 0
    execute at @s run playsound entity.enderman.teleport hostile @a[distance=..128] ~ ~ ~ 16 1 0
    execute at @s run playsound entity.enderman.teleport hostile @a[distance=..128] ~ ~ ~ 16 0.5 0
    execute at @s run particle witch ~ ~2 ~ 8.0 4.0 8.0 0 256 force