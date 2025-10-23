#> asset:object/ferocity/repeat_particle
#
# repeat
#
# @within asset:object/ferocity/particle

# particle
    $particle dust{color:[0.824,0.039,0.075],scale:0.75} ~ ~$(y) ~ 0.0 0.0 0.0 0 1 normal
    scoreboard players add @s repeat_time 1
    execute if score @s repeat_time matches ..30 positioned ^ ^ ^0.1 run function asset:object/ferocity/repeat_particle with storage asset: __temp__
    scoreboard players reset @s repeat_time