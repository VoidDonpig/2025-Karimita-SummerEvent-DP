#> asset:object/rotten_bullet/
#
# asset tick
#
# @within asset:

# timer
    scoreboard players add @s asset_timer.1 1

# tp
    function asset:object/rotten_bullet/teleport

# hit
    execute if entity @s[tag=hitted] at @s run function asset:object/rotten_bullet/hit

# kill
    kill @s[scores={asset_timer.1=100..}]