#> asset:object/flame_wand_marker/
#
# asset process
#
# @within asset:

# teleport
    tp ^ ^ ^1

# hit detection
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @n[type=#lib:mob,dx=0] run tag @s add hit
    execute unless block ~ ~ ~ #lib:not_solid run tag @s add hit
    execute if block ~ ~ ~ water run tag @s add watered

# hit or watered
    execute if entity @s[tag=hit] run function asset:object/flame_wand_marker/hit
    execute if entity @s[tag=watered] run function asset:object/flame_wand_marker/watered

# sfx
    particle dust_color_transition{from_color:[1.0,0.804,0.169],to_color:[1.0,0.125,0.023],scale:2} ~ ~ ~ 0.2 0.2 0.2 0 32 force
    particle flame ~ ~ ~ 0.4 0.4 0.4 0.05 9 force
    playsound block.furnace.fire_crackle neutral @a ~ ~ ~ 1 2

# timer
    scoreboard players add @s asset_timer.1 1
    execute if score @s asset_timer.1 matches 20 run tag @s add hit