#> asset:mob/ender_dragon/action/lightning_strike/set_marker
#
# place marker
#
# @within asset:mob/ender_dragon/action/lightning_strike/ready

# summon
    summon minecraft:marker ~ ~ ~ {Tags:["asset","lightning_strike"],data:{asset:{id:lightning_strike}}}

# sfx
    particle minecraft:end_rod ~ ~ ~ 0.0 0.0 0.0 0.1 64 normal
    playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..16] ~ ~ ~ 1 1.7 0