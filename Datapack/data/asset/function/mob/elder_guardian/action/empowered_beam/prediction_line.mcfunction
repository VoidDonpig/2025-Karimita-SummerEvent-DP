#> asset:mob/elder_guardian/action/empowered_beam/prediction_line
#
# prediction line
#
# @within function asset:mob/elder_guardian/action/empowered_beam/charging
#         function asset:mob/elder_guardian/action/empowered_beam/prediction_line

# line
    particle minecraft:crit ~ ~ ~ 0.0 0.0 0.0 0 1 normal

# repeat
    execute positioned ^ ^ ^0.5 if entity @s[distance=..64] run function asset:mob/elder_guardian/action/empowered_beam/prediction_line