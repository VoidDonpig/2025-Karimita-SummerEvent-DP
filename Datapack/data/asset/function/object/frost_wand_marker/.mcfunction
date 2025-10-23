#> asset:object/frost_wand_marker/
#
# asset process
#
# @within asset:

# teleport
    tp ^ ^ ^0.5

# hit detection
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @n[type=#lib:mob,dx=0] run tag @s add hit
    execute unless block ~ ~ ~ #lib:not_solid run tag @s add hit
    execute if block ~ ~ ~ water run tag @s add watered

# hit or watered
    execute if entity @s[tag=hit] run function asset:object/frost_wand_marker/hit

# particle
    particle dust_color_transition{from_color:[0.251,0.702,1.000],scale:2,to_color:[0.859,0.996,1.000]} ~ ~ ~ 0.2 0.2 0.2 0 8 normal
    particle block{block_state:ice} ~ ~ ~ 0.4 0.4 0.4 0.05 9 normal
    playsound block.glass.break neutral @a[distance=..16] ~ ~ ~ 1 2

# timer
    scoreboard players add @s asset_timer.1 1
    execute if score @s asset_timer.1 matches 20 run tag @s add hit