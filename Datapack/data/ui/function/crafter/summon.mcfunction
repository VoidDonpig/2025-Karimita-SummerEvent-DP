#> ui:crafter/summon
#
# summon ui
#
# @handles ui:looking_at/crafter

# summon ui
    summon minecraft:interaction ~ ~1.1 ~ {width:1f,attack:{player:[I;2106,5308417,0,0],timestamp:0},Tags:["ui_init","ui_interaction","autokill"],\
    Passengers:[{Invulnerable:1b,Silent:1b,id:"minecraft:chest_minecart",DisplayState:{Name:"minecraft:barrier"},Tags:["autokill","no_vehicle_kill","crafter_ui","invisible_minecart"],\
    Passengers:[{id:"minecraft:marker",Tags:["no_vehicle_kill","crafter_marker","autokill"]}]}]}
    execute positioned ~ ~1.1 ~ as @e[type=minecraft:interaction,tag=ui_init,distance=..0.01] positioned ~ ~-1.1 ~ run function ui:crafter/init

# reset
    advancement revoke @s only ui:looking_at/crafter