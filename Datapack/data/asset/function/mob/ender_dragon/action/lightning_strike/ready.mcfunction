#> asset:mob/ender_dragon/action/lightning_strike/ready
#
# ready
#
# @within asset:mob/ender_dragon/action/lightning_strike/charging

# ready act
    playsound minecraft:entity.iron_golem.death hostile @a[distance=..128] ~ ~ ~ 8 2.0 1
    execute as @a[distance=..128] at @s run function asset:mob/ender_dragon/action/lightning_strike/set_marker

# remove marker
    tag @s remove lightning_strike_charging