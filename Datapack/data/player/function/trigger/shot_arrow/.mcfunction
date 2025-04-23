#> player:trigger/shot_arrow/
#
# trigger when shoot arrow
#
# @within player:tick

# artemis armor 1
    execute if predicate asset:armor/full/artemis_armor if score @s charging_bow matches 20.. anchored eyes positioned ^ ^ ^ run function asset:item/artemis_armor/shot

# convert data
    execute anchored eyes as @e[type=#arrows,tag=!already_convert_power_into_damage,distance=..2] run function lib:convert_power_into_damage/

# trigger
    execute if predicate player:team/class.archer run function player:class/archer/when_shot

# damage increase
    execute if score @s arrow_damage_increase matches 1.. anchored eyes positioned ^ ^ ^ as @e[type=minecraft:arrow,distance=..2,tag=!already_arrow_damage_increase] run function player:arrow_damage_increase

# reduce artemis armor damage
    execute anchored eyes positioned ^ ^ ^ as @e[type=minecraft:arrow,distance=..2,tag=artemis_armor_arrow,tag=!already_artemis_armor_arrow_damage_decrease] run function asset:item/artemis_armor/damage_decrease

# reset
    scoreboard players reset @s bow_used
    scoreboard players reset @s crossbow_used
    tag @s remove arrow_shot