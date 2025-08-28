#> asset:object/spawning_egg_hitbox.ender_dragon/hatch
#
# tick
#
# @within asset:object/spawning_egg_hitbox.ender_dragon/timer

# hatch
    summon ender_dragon ~ ~ ~ {Tags:["special_mob","enderling_dragon"],DragonPhase:1}

# kill
    function asset:object/spawning_egg_hitbox.ender_dragon/kill