#> asset:item/frost_wand/get_needed_mana
#
# get magic data
#
# @within asset:item/frost_wand/do
#         asset:item/frost_wand/lore/modify
#         asset:item/frost_wand/lore/offhand

# get needed mana
    scoreboard players set $needed_mana temporary 30
    execute if predicate player:team/class.wizard run function player:class/wizard/ability/mana_saver/