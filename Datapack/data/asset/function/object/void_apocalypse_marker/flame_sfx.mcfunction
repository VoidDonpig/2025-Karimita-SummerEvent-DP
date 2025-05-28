#> asset:object/void_apocalypse_marker/flame_sfx
#
# sfx
#
# @within asset:object/void_apocalypse_marker/

# repeat 1
    execute if score @s asset_timer.1 matches 100.. run function asset:object/void_apocalypse_marker/repeat_1

# sfx
    execute if score @s asset_timer.1 matches 100 run particle explosion_emitter ~ ~ ~ 0.0 0.0 0.0 0 4 force
    execute if score @s asset_timer.1 matches 100.. run playsound entity.warden.sonic_boom hostile @a ~ ~ ~ 16 0.8 0
    execute if score @s asset_timer.1 matches 100..110 run playsound entity.generic.explode hostile @a ~ ~ ~ 16 0.5 0
    execute if score @s asset_timer.1 matches 100 run playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~ 16 0.5 0