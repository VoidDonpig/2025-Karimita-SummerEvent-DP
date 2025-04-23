#> player:cosmetic/void_aura/
#
# void aura
#
# @within player:cosmetic/

# aura
    scoreboard players add @s cosmetic_timer 1

    execute if score @s cosmetic_timer matches 1 run rotate 83a-51-1-0-0 0 0
    execute if score @s cosmetic_timer matches 2 run rotate 83a-51-1-0-0 15 0
    execute if score @s cosmetic_timer matches 3 run rotate 83a-51-1-0-0 30 0
    execute if score @s cosmetic_timer matches 4 run rotate 83a-51-1-0-0 45 0
    execute if score @s cosmetic_timer matches 5 run rotate 83a-51-1-0-0 60 0
    execute if score @s cosmetic_timer matches 6 run rotate 83a-51-1-0-0 75 0
    execute if score @s cosmetic_timer matches 7 run rotate 83a-51-1-0-0 90 0
    execute if score @s cosmetic_timer matches 8 run rotate 83a-51-1-0-0 105 0
    execute if score @s cosmetic_timer matches 9 run rotate 83a-51-1-0-0 120 0
    execute if score @s cosmetic_timer matches 10 run rotate 83a-51-1-0-0 135 0
    execute if score @s cosmetic_timer matches 11 run rotate 83a-51-1-0-0 150 0
    execute if score @s cosmetic_timer matches 12 run rotate 83a-51-1-0-0 165 0
    execute if score @s cosmetic_timer matches 13 run rotate 83a-51-1-0-0 180 0
    execute if score @s cosmetic_timer matches 14 run rotate 83a-51-1-0-0 195 0
    execute if score @s cosmetic_timer matches 15 run rotate 83a-51-1-0-0 210 0
    execute if score @s cosmetic_timer matches 16 run rotate 83a-51-1-0-0 225 0
    execute if score @s cosmetic_timer matches 17 run rotate 83a-51-1-0-0 240 0
    execute if score @s cosmetic_timer matches 18 run rotate 83a-51-1-0-0 255 0
    execute if score @s cosmetic_timer matches 19 run rotate 83a-51-1-0-0 270 0
    execute if score @s cosmetic_timer matches 20 run rotate 83a-51-1-0-0 285 0
    execute if score @s cosmetic_timer matches 21 run rotate 83a-51-1-0-0 300 0
    execute if score @s cosmetic_timer matches 22 run rotate 83a-51-1-0-0 315 0
    execute if score @s cosmetic_timer matches 23 run rotate 83a-51-1-0-0 330 0
    execute if score @s cosmetic_timer matches 24 run rotate 83a-51-1-0-0 345 0

    tag @s add cosmetic.this
    execute as 83a-51-1-0-0 at @p[tag=cosmetic.this] rotated as 83a-51-1-0-0 run function player:cosmetic/void_aura/particle
    tag @s remove cosmetic.this

    execute if score @s cosmetic_timer matches 24.. run scoreboard players reset @s cosmetic_timer