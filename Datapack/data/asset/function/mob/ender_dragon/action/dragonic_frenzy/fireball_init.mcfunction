#> asset:mob/ender_dragon/action/dragonic_frenzy/
#
# set data
#
# @within function asset:mob/ender_dragon/action/dragonic_frenzy/shot

# set data
    execute store result score #RotationX temporary run data get entity @s Rotation[0]
    execute store result score #RotationZ temporary run data get entity @s Rotation[1]
    execute store result score #RNG0 temporary run random value -180..180
    execute store result score #RNG1 temporary run random value 30..85
    scoreboard players operation #RotationX temporary += #RNG0 temporary
    scoreboard players operation #RotationZ temporary += #RNG1 temporary
    execute store result entity @s Rotation[0] float 1 run scoreboard players get #RotationX temporary
    execute store result entity @s Rotation[1] float 1 run scoreboard players get #RotationZ temporary

    execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^4.0 {Tags:["FireballMotion"],Marker:1b,Invisible:1b}
    data modify entity @s Motion set from entity @n[type=minecraft:armor_stand,tag=FireballMotion] Pos
    data modify entity @s acceleration_power set from entity @n[type=minecraft:armor_stand,tag=FireballMotion] Pos
    kill @n[tag=FireballMotion]
    data modify entity @s Owner set from entity @n[tag=Attacker] UUID
    scoreboard players set @s KillTimer 20
    tag @s add AutoKill
    scoreboard players reset #RotationX temporary
    scoreboard players reset #RotationZ temporary
    scoreboard players reset #RNG0 temporary
    scoreboard players reset #RNG1 temporary