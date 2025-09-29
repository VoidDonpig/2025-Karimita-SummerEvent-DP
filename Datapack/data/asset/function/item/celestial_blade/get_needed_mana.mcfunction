#> asset:item/celestial_blade/get_needed_mana
#
# get magic data
#
# @within asset:item/celestial_blade/do
#         asset:item/celestial_blade/lore/modify
#         asset:item/celestial_blade/lore/offhand

# get needed mana
    scoreboard players set $needed_mana temporary 300
    execute if predicate player:team/class.wizard run function player:class/wizard/ability/mana_saver/