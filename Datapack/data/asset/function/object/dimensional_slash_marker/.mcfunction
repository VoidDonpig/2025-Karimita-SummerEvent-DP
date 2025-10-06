#> asset:object/dimensional_slash_marker/
#
# asset tick
#
# @within asset:

# timer
    scoreboard players add @s ai_timer.1 1

# prediction
    particle crit ~ ~ ~ 0.2 0.2 0.2 0.04 1 force

# activate
    execute if score @s ai_timer.1 matches 40.. run function asset:object/dimensional_slash_marker/activate