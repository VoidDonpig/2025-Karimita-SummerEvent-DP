#> asset:mob/wither/action/wither_aspiration/
#
# wither aspiration
#
# @within asset:mob/wither/action/phase04

# set motion
    execute facing entity @n[tag=this] eyes in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^1.6
    execute store result score $x player.motion run data get entity 83a-51-1-0-0 Pos[0] 10000
    execute store result score $y player.motion run data get entity 83a-51-1-0-0 Pos[1] 10000
    execute store result score $z player.motion run data get entity 83a-51-1-0-0 Pos[2] 10000

# motion
    function lib:player_motion/score