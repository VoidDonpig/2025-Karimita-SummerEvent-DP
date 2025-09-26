#> player:cosmetic/particle/void_aura/
#
# void aura
#
# @within player:cosmetic/particle/

# aura
    scoreboard players add @s cosmetic_particle_timer 1

    execute if score @s cosmetic_particle_timer matches 1 rotated 0 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 2 rotated 15 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 3 rotated 30 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 4 rotated 45 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 5 rotated 60 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 6 rotated 75 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 7 rotated 90 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 8 rotated 105 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 9 rotated 120 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 10 rotated 135 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 11 rotated 150 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 12 rotated 165 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 13 rotated 180 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 14 rotated 195 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 15 rotated 210 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 16 rotated 225 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 17 rotated 240 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 18 rotated 255 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 19 rotated 270 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 20 rotated 285 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 21 rotated 300 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 22 rotated 315 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 23 rotated 330 0 run function player:cosmetic/particle/void_aura/particle
    execute if score @s cosmetic_particle_timer matches 24 rotated 345 0 run function player:cosmetic/particle/void_aura/particle

    execute if score @s cosmetic_particle_timer matches 24.. run scoreboard players reset @s cosmetic_particle_timer