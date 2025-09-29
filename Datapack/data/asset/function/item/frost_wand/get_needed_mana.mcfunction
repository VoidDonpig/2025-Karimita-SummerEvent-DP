#> asset:item/lightning_wand/get_needed_mana
#
# get magic data
#
# @within asset:item/lightning_wand/do
#         asset:item/lightning_wand/lore/modify
#         asset:item/lightning_wand/lore/offhand

# get needed mana
    scoreboard players set $needed_mana temporary 100
    execute if predicate player:team/class.wizard run function player:class/wizard/ability/mana_saver/