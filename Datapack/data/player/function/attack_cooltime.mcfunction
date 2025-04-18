#> player:attack_cooltime
#
# manage cooltime
#
# @within player:tick


# remove cooltime
    scoreboard players operation @s attack_cooltime -= @s attack_speed

# reset
    execute if score @s attack_cooltime matches ..0 run scoreboard players reset @s attack_cooltime