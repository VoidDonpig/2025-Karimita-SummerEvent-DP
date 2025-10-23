#> asset:object/blackhole_prototype/
#
# asset tick
#
# @within asset:

# manage timer
    scoreboard players add @s asset_timer.1 1

# sfx
    execute if score @s asset_timer.1 matches 1 run playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 2 0.5 1
    execute if score @s asset_timer.1 matches 2 run playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 2 0.6 1
    execute if score @s asset_timer.1 matches 3 run playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 2 0.7 1
    execute if score @s asset_timer.1 matches 4 run playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 2 0.8 1
    execute if score @s asset_timer.1 matches 5 run playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 2 0.9 1
    execute if score @s asset_timer.1 matches 6.. run playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 2 1.0 1
    particle dust{color:[0.0,0.0,0.0],scale:4} ~ ~ ~ 2.0 2.0 2.0 0 32 normal

# aspiration
    tag @s add this
    execute as @a[distance=..128] run function asset:object/blackhole_prototype/aspiration
    tag @s remove this

# kill
    kill @s[scores={asset_timer.1=100..}]