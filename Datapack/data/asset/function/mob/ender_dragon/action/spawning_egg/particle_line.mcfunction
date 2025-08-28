#> asset:mob/ender_dragon/action/spawning_egg/particle_line
#
# particle line
#
# @within asset:mob/ender_dragon/action/phase*

# kill previous temp marker
    kill @n[type=marker,tag=spawning_egg.__temp__]

# line particle
    summon marker 0 66 0 {Tags:["spawning_egg.__temp__"]}
    particle witch ^ ^ ^ 0.0 0.0 0.0 0 1 force
    particle enchant ^ ^ ^ 0.0 0.0 0.0 0 1 force
    particle enchanted_hit ^ ^ ^ 0.0 0.0 0.0 0 1 force

# repeat
    execute facing entity @n[type=marker,tag=spawning_egg.__temp__] feet positioned ^ ^ ^0.3 unless entity @n[type=marker,tag=spawning_egg.__temp__,distance=..0.3] if entity @s[distance=..64] run function asset:mob/ender_dragon/action/spawning_egg/particle_line

# kill marker
    kill @n[type=marker,tag=spawning_egg.__temp__]