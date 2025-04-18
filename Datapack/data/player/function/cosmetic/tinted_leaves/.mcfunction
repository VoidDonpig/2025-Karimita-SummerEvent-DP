#> player:cosmetic/tinted_leaves/
#
# tinted leaves
#
# @within player:cosmetic/

# aura
    scoreboard players add @s cosmetic_timer 1

    execute if score @s cosmetic_timer matches 1 run particle tinted_leaves{color:[0.039,0.569,0.094,1.00]} ~ ~2.0 ~ 0.25 0.1 0.25 0 1 force

    execute if score @s cosmetic_timer matches 4.. run scoreboard players reset @s cosmetic_timer