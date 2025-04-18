#> asset:object/catastrophic_lightning_marker/
#
# asset tick
#
# @within asset:

# timer
    scoreboard players add @s asset_timer.1 1

# sfx
    particle smoke ~ ~10 ~ 0.4 0.4 0.4 0 16 force @a

# caution
    playsound block.note_block.pling hostile @a[distance=..3] ~ ~ ~ 1 2 1

# summon lightning
    execute if score @s asset_timer.1 matches 60.. run function asset:object/catastrophic_lightning_marker/summon