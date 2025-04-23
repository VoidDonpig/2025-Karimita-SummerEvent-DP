#> player:class/assassin/ability/bloodlust/active
#
# sfx
#
# @within player:class/assassin/

# sfx
    particle minecraft:dust{color:[1.0,0.0,0.0],scale:1} ~ ~1.0 ~ 0.2 0.4 0.2 0 2 force @a

# timer
    scoreboard players remove @s bloodlust_timer 1
    execute if score @s bloodlust_timer matches ..0 run function player:class/assassin/ability/bloodlust/reset