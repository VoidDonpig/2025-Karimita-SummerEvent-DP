#> core:main
#
# main function
#
# @handles #minecraft:tick

# world tick
    function world:
    function ui:

# player
    execute as @a[predicate=!world:is_in_afk] at @s run function player:tick

# mob
    execute as @e[type=#lib:mob,tag=!asset,tag=!dead,tag=!already_init] at @s run function mob:init/
    execute as @e[type=#lib:mob,tag=!asset,tag=!dead,tag=already_init,tag=!boss] at @s if entity @p[predicate=!player:is_player_exception,distance=..48] run function mob:tick/
    execute as @e[type=#lib:mob,tag=!dead,tag=already_init,tag=boss] at @s run function mob:tick/
    # prevent drowning
        execute as @e[type=#lib:mob,tag=mob.prevent_drowned] if predicate {"condition": "entity_properties","entity": "this","predicate": {"periodic_tick": 200}} if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{fluid:{fluids:"#minecraft:water"}}}} if data entity @s InWaterTime unless data entity @s {InWaterTime:-1} run data modify entity @s InWaterTime set value -1

# asset
    execute as @e[tag=asset] at @s run function asset: with entity @s data.asset

# autokill
    execute as @e[tag=autokill] at @s run function lib:autokill/