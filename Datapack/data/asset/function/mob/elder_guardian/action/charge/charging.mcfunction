#> asset:mob/elder_guardian/action/charge/charging
#
# charging prediction and sfx
#
# @within asset:mob/elder_guardian/action/charge/

# sfx
    particle minecraft:bubble ^ ^ ^-2 0.4 0.4 0.4 0 128 force @a
    playsound minecraft:entity.player.swim hostile @a ~ ~ ~ 2 1 0

# prediction line
    function asset:mob/elder_guardian/action/charge/prediction_line