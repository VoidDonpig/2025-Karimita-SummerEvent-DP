#> mob:tick/
#
# mob tick
#
# @within function core:main

# tick
    execute if data entity @s {data:{mob:{have_always_action:1b}}} run function mob:tick/always/
    execute if predicate lib:is_having_target run function mob:tick/tick/

# prevent drowning
    execute if entity @s[tag=special_mob] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{fluid:{fluids:"#minecraft:water"}}}} if data entity @s InWaterTime unless data entity @s {InWaterTime:-1} run data modify entity @s InWaterTime set value -1