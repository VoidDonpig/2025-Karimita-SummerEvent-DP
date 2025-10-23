#> asset:mob/ender_dragon/action/dimensional_slash/place_marker
#
# place marker
#
# @within asset:mob/ender_dragon/action/dimensional_slash/set_data

# place marker
    execute positioned over motion_blocking run summon marker ~ ~ ~ {Tags:["asset","dimensional_slash_marker"],data:{asset:{id:dimensional_slash_marker}}}

# particle
     execute positioned over motion_blocking run particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 0.0 0.0 0.0 0 1 force

# reset
    execute store result score $rng_0 temporary run random value 0..100

# loop until reach limit
    execute if score $rng_0 temporary matches 0..10 rotated ~20 ~ positioned ^ ^ ^1 if entity @s[distance=..128] run function asset:mob/ender_dragon/action/dimensional_slash/place_marker
    execute if score $rng_0 temporary matches 11..20 rotated ~-20 ~ positioned ^ ^ ^1 if entity @s[distance=..128] run function asset:mob/ender_dragon/action/dimensional_slash/place_marker
    execute if score $rng_0 temporary matches 21.. positioned ^ ^ ^1 if entity @s[distance=..128] run function asset:mob/ender_dragon/action/dimensional_slash/place_marker

# reset
    scoreboard players reset $rng_0 temporary

# kill
    kill @s