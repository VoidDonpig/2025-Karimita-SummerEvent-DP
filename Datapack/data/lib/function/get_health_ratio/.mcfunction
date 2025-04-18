#> lib:get_health_ratio/
#
# get health ration
#
# @public
#
# @output
#   score @s health_ratio
#       one's health ratio

# get health ratio
    execute store result score @s health_ratio run data get entity @s Health
    execute store result score $current_max_health temporary run attribute @s minecraft:max_health get
    scoreboard players operation @s health_ratio *= $100 constant
    scoreboard players operation @s health_ratio /= $current_max_health temporary
    execute if score @s health_ratio matches 0 run scoreboard players set @s health_ratio 1

# reset
    scoreboard players reset $current_max_health temporary