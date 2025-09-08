#> player:trigger/shot_arrow/
#
# trigger when shoot arrow
#
# @within player:tick

# artemis armor 1
    execute if predicate asset:armor/full/artemis_armor if score @s charging_bow matches 20.. anchored eyes positioned ^ ^ ^ run function asset:item/artemis_armor/shot

# convert data
    execute anchored eyes as @e[type=#arrows,tag=!already_init,distance=..2] run function lib:convert_power_into_damage/

# trigger
    execute if predicate player:team/class.archer run function player:class/archer/when_shot

# damage increase
    execute if score @s arrow_damage_increase matches 1.. anchored eyes positioned ^ ^ ^ as @e[type=#minecraft:arrows,distance=..2,tag=!already_init] run function player:status/arrow_damage_increase

# dragon tracer
    execute if predicate asset:enchantment/dragon_tracer if entity @e[type=ender_dragon,distance=..256] if score @s charging_bow matches 20.. anchored eyes positioned ^ ^ ^ as @e[type=#minecraft:arrows,distance=..2,tag=!already_init] run function asset:enchantment/dragon_tracer/

# increase speed
    execute anchored eyes positioned ^ ^ ^ as @e[type=#minecraft:arrows,distance=..2,tag=!already_init] run function player:status/increase_arrow_speed/

# init animation
    #execute anchored eyes positioned ^ ^ ^ as @e[type=#minecraft:arrows,distance=..2,tag=!already_init] run data modify entity @s Rotation set from entity @p[tag=arrow_shot]

# init complete
    execute anchored eyes positioned ^ ^ ^ as @e[type=#minecraft:arrows,distance=..2,tag=!already_init] run tag @s add already_init

# reset
    scoreboard players reset @s bow_used
    scoreboard players reset @s crossbow_used
    scoreboard players reset @s charging_bow
    tag @s remove arrow_shot