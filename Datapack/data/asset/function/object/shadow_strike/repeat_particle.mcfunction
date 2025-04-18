#> asset:object/shadow_strike/repeat_particle
#
# repeat
#
# @within asset:object/shadow_strike/particle

# particle
    $particle dust{color:[0.0,0.0,0.0],scale:0.75} ~ ~$(y) ~ 0.0 0.0 0.0 0 1 force @a[distance=..32]
    scoreboard players add @s repeat_time 1
    execute if score @s repeat_time matches ..30 positioned ^ ^ ^0.1 run function asset:object/shadow_strike/repeat_particle with storage asset: __temp__
    scoreboard players reset @s repeat_time