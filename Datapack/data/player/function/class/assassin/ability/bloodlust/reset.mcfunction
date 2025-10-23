#> player:class/assassin/ability/bloodlust/reset
#
# reset process
#
# @within player:class/assassin/ability/bloodlust/active

# reset
    scoreboard players reset @s bloodlust_count
    scoreboard players reset @s bloodlust_timer
    attribute @s attack_damage modifier remove player:class.assassin.bloodlust_strength

# sfx
    playsound minecraft:block.fire.extinguish player @a[distance=..16] ~ ~ ~ 1.0 1.6 0.0
    particle minecraft:smoke ~ ~1.0 ~ 0.2 0.4 0.2 0.1 16 normal

# add flag tag
    tag @s add statusupdate