#> asset:object/lightning_strike/
#
# lightning strike
#
# @within asset:

# timer
    scoreboard players add @s asset_timer.1 1

# damage
    execute if score @s asset_timer.1 matches 30.. run function asset:object/lightning_strike/damage