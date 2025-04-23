#> lib:convert_power_into_damage/
#
# convert power into damage
#
# @public 
#
# @context arrow

# convert process
    execute store result score $damage temporary run data get entity @s damage 10
    execute store result score $power temporary run data get entity @s weapon.components."minecraft:enchantments"."minecraft:power" 5
    scoreboard players operation $damage temporary += $power temporary
    execute store result entity @s damage double 0.1 run scoreboard players get $damage temporary

# remove power
    data remove entity @s weapon.components."minecraft:enchantments"."minecraft:power"

# tag
    tag @s add already_convert_power_into_damage

# reset
    scoreboard players reset $damage temporary
    scoreboard players reset $power temporary