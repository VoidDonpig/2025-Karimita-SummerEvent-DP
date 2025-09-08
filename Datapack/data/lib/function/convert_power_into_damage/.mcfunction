#> lib:convert_power_into_damage/
#
# convert power into damage
#
# @public 
#
# @context arrow

# convert process
    execute store result score $damage temporary run data get entity @s damage 10
    execute if data entity @s weapon.components."minecraft:enchantments"."minecraft:power" store result score $power temporary run data get entity @s weapon.components."minecraft:enchantments"."minecraft:power" 5
    execute if data entity @s weapon.components."minecraft:enchantments"."asset:pre/range/damage" store result score $pre_damage temporary run data get entity @s weapon.components."minecraft:enchantments"."asset:pre/range/damage" 5
    scoreboard players operation $damage temporary += $power temporary
    scoreboard players operation $damage temporary += $pre_damage temporary
    execute store result entity @s damage double 0.1 run scoreboard players get $damage temporary

# remove power
    data remove entity @s weapon.components."minecraft:enchantments"."minecraft:power"
    data remove entity @s weapon.components."minecraft:enchantments"."asset:pre/range/damage"

# reset
    scoreboard players reset $damage temporary
    scoreboard players reset $power temporary
    scoreboard players reset $pre_damage temporary