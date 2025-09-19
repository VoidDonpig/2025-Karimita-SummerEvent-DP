#> asset:item/eternal_carrot/offhand
#
# offhand
#
# @within player:status/cooltime/remove

# clear used item
    clear @s *[custom_data~{custom_item_id:"eternal_carrot_eaten"}]

# give item
    loot replace entity @s weapon.offhand loot asset:item/food/eternal_carrot

# reset
    scoreboard players reset @s eternal_carrot_cooltime