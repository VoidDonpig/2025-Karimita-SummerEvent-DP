#> player:class/archer/ability/multiple_shot/
#
# multi shot process
#
# @within player:class/archer/when_shot

# role dice
    execute store result score $chance temporary run random value 1..50
    execute if score $chance temporary <= @s class.archer.level run tag @s add third_arrow_success

# weapon get
    data modify storage player: multiple_shot.weapon set from entity @s SelectedItem
    
# third fail
    execute unless entity @s[tag=third_arrow_success] run function player:class/archer/ability/multiple_shot/third_fail
    execute if entity @s[tag=third_arrow_success] run function player:class/archer/ability/multiple_shot/third_success

# convert data
    execute anchored eyes as @e[type=#arrows,tag=!already_convert_power_into_damage,distance=..2] run function lib:convert_power_into_damage/

# reset
    scoreboard players reset $chance temporary
    scoreboard players reset $base_damage temporary
    scoreboard players reset $power temporary
    tag @s remove third_arrow_success
    data remove storage player: multiple_shot