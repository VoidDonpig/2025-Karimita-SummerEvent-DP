#> asset:object/spawning_egg_hitbox.ender_dragon/hatch
#
# tick
#
# @within asset:object/spawning_egg_hitbox.ender_dragon/timer

# hatch
    summon ender_dragon ~ ~ ~ {Tags:["enderling_dragon","special_mob"],DragonPhase:1,data:{mob:{id:enderling_dragon}}}

# kill
    function asset:object/spawning_egg_hitbox.ender_dragon/kill