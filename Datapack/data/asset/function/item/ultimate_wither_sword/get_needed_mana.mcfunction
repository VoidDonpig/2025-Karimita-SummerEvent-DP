#> asset:item/ultimate_wither_sword/get_needed_mana
#
# get magic data
#
# @within asset:item/ultimate_wither_sword/do
#         asset:item/ultimate_wither_sword/lore/modify
#         asset:item/ultimate_wither_sword/lore/offhand

# get needed mana
    scoreboard players set $needed_mana temporary 300
    execute if predicate player:team/class.wizard run function player:class/wizard/ability/mana_saver/