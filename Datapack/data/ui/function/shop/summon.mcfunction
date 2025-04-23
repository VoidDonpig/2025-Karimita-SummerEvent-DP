#> ui:shop/summon
#
# summon shop ui
#
# @handles ui:looking_at/shop

# set npc data
    execute anchored eyes positioned ^ ^ ^ run function ui:shop/get_npc
    execute unless data storage ui: shop_data anchored eyes positioned ^ ^ ^3 as @n[type=villager,tag=shop_npc] run function ui:shop/get_shopdata

# summon ui
    summon interaction ~ ~1.1 ~ {width:1f,attack:{player:[I;2106,5308417,0,0],timestamp:0},Tags:["ui_init","autokill_timer","autokill","ui_interaction"],\
    Passengers:[{Invulnerable:1b,id:"chest_minecart",DisplayState:{Name:"barrier"},Tags:["no_vehicle_kill","autokill","shop_ui","invisible_minecart"],\
    Passengers:[{id:"marker",Tags:["no_vehicle_kill","autokill","shop_marker"]}]}]}
    execute positioned ~ ~1.1 ~ as @e[type=interaction,tag=ui_init,distance=..0.01] positioned ~ ~-1.1 ~ run function ui:shop/init

# reest
    data remove storage ui: shop_data
    advancement revoke @s only ui:looking_at/shop