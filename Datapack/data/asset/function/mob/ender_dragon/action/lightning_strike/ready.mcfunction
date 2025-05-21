#> asset:mob/ender_dragon/action/lightning_strike/ready
#
# ready
#
# @within asset:mob/ender_dragon/action/lightning_strike/charging

# ready act
    playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 8 2.0 1
    execute as @a[distance=..128] at @s run function asset:mob/ender_dragon/action/lightning_strike/set_marker