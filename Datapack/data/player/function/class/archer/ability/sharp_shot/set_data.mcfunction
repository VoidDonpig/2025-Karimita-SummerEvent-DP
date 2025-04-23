#> player:class/archer/ability/sharp_shot/set_data
#
# set data
#
# @within fplayer:class/archer/ability/sharp_shot/

# set data
    execute store result score $pierce_level temporary run data get entity @s PierceLevel
    execute if score @p[tag=arrow_shot] class.archer.level matches 1..19 run scoreboard players add $pierce_level temporary 1
    execute if score @p[tag=arrow_shot] class.archer.level matches 20..39 run scoreboard players add $pierce_level temporary 2
    execute if score @p[tag=arrow_shot] class.archer.level matches 40.. run scoreboard players add $pierce_level temporary 3
    execute store result entity @s PierceLevel int 1 run scoreboard players get $pierce_level temporary
    tag @s add already_sharp_shot

# reset
    scoreboard players reset $pierce_level temporary