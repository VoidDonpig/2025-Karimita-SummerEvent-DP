#> world:
#
# world tick
#
# @within core:main

# minecart
    execute as @e[type=#lib:minecarts,tag=!already_init,tag=!invisible_minecart] run function world:minecart/

# structure
    function world:structure/

# spawner
    execute as @e[type=marker,tag=spawner] at @s run function world:spawner/
    
# prevent drowning
        execute as @e[type=#lib:mob,tag=mob.prevent_drowned] if predicate {"condition": "entity_properties","entity": "this","predicate": {"periodic_tick": 200}} if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{fluid:{fluids:"#minecraft:water"}}}} if data entity @s InWaterTime unless data entity @s {InWaterTime:-1} run data modify entity @s InWaterTime set value -1

# dungeon
    # exit
        execute as @e[type=marker,tag=dungeon_exit] at @s run function world:dungeon/exit/check

# afk
    execute if entity @a[predicate=world:is_in_afk] as @a[predicate=world:is_in_afk] run function world:afk/

# experience orb
    execute as @e[type=experience_orb,tag=!already_init] run data modify entity @s Age set value 4800
    tag @e[type=experience_orb,tag=!already_init] add already_init