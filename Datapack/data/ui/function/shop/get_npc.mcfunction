#> ui:shop/get_npc
#
# get npc data
#
# @context shop npc

execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[type=villager,tag=shop_npc,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] run function ui:shop/get_shopdata
execute unless data storage ui: shop_data if entity @s[distance=..4] positioned ^ ^ ^0.1 run function ui:shop/get_npc