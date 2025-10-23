#> asset:mob/elder_guardian/action/charge/prediction_line
#
# prediction line
#
# @within asset:mob/elder_guardian/action/charge/charging
#         asset:mob/elder_guardian/action/charge/prediction_line

# prediction line
    particle minecraft:fishing ~ ~ ~ 0.3 0.3 0.3 0 32 normal

# repeat
    execute positioned ^ ^ ^0.1 if entity @s[distance=..20] run function asset:mob/elder_guardian/action/charge/prediction_line