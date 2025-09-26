#> lib:player_motion/score
#
# score based player motion
#
# @context player motion
#
# @reads
#   score $x player_motion
#   score $y player_motion
#   score $z player_motion

# trim value
    execute if score $x player.motion matches 1000001.. run scoreboard players set $x player.motion 1000000
    execute if score $y player.motion matches 1000001.. run scoreboard players set $y player.motion 1000000
    execute if score $z player.motion matches 1000001.. run scoreboard players set $z player.motion 1000000
    execute if score $x player.motion matches ..-1000001 run scoreboard players set $x player.motion -1000000
    execute if score $y player.motion matches ..-1000001 run scoreboard players set $y player.motion -1000000
    execute if score $z player.motion matches ..-1000001 run scoreboard players set $z player.motion -1000000
    execute unless score $x player.motion = $x player.motion run scoreboard players set $x player.motion 0
    execute unless score $y player.motion = $y player.motion run scoreboard players set $y player.motion 0
    execute unless score $z player.motion = $z player.motion run scoreboard players set $z player.motion 0

# init motion data
    data modify storage lib: motion set value {x10000:0,x100:0,x:0,y10000:0,y100:0,y:0,z10000:0,z100:0,z:0,ysign:positive}

# calculation
    # x
        scoreboard players operation $x_2 temporary = $x player.motion
        execute if score $x player.motion matches ..-1 run scoreboard players operation $x_2 temporary *= $-1 constant
        execute store result storage lib: motion.x10000 int 0.0001 run scoreboard players get $x_2 temporary
        execute store result storage lib: motion.x100 int 0.01 run scoreboard players operation $x_2 temporary %= $10000 constant
        execute store result storage lib: motion.x int 1 run scoreboard players operation $x_2 temporary %= $100 constant
        execute if data storage lib: motion{x10000:0} run data modify storage lib: motion.x10000 set value 100
        execute if data storage lib: motion{x100:0} run data modify storage lib: motion.x100 set value 100
        execute if data storage lib: motion{x:0} run data modify storage lib: motion.x set value 100
    # y
        scoreboard players operation $y_2 temporary = $y player.motion
        execute if score $y player.motion matches ..-1 run scoreboard players operation $y_2 temporary *= $-1 constant
        execute store result storage lib: motion.y10000 int 0.0001 run scoreboard players get $y_2 temporary
        execute store result storage lib: motion.y100 int 0.01 run scoreboard players operation $y_2 temporary %= $10000 constant
        execute store result storage lib: motion.y int 1 run scoreboard players operation $y_2 temporary %= $100 constant
        execute if data storage lib: motion{y10000:0} run data modify storage lib: motion.y10000 set value 100
        execute if data storage lib: motion{y100:0} run data modify storage lib: motion.y100 set value 100
        execute if data storage lib: motion{y:0} run data modify storage lib: motion.y set value 100
        execute if score $y player.motion matches ..-1 run data modify storage lib: motion.ysign set value negative
    # z
        scoreboard players operation $z_2 temporary = $z player.motion
        execute if score $z player.motion matches ..-1 run scoreboard players operation $z_2 temporary *= $-1 constant
        execute store result storage lib: motion.z10000 int 0.0001 run scoreboard players get $z_2 temporary
        execute store result storage lib: motion.z100 int 0.01 run scoreboard players operation $z_2 temporary %= $10000 constant
        execute store result storage lib: motion.z int 1 run scoreboard players operation $z_2 temporary %= $100 constant
        execute if data storage lib: motion{z10000:0} run data modify storage lib: motion.z10000 set value 100
        execute if data storage lib: motion{z100:0} run data modify storage lib: motion.z100 set value 100
        execute if data storage lib: motion{z:0} run data modify storage lib: motion.z set value 100

# apply motion
    function lib:player_motion/apply with storage lib: motion

# reset
    data remove storage lib: motion
    scoreboard players reset $x player.motion
    scoreboard players reset $y player.motion
    scoreboard players reset $z player.motion
    scoreboard players reset $x_2 temporary
    scoreboard players reset $y_2 temporary
    scoreboard players reset $z_2 temporary