#> player:class/knight/ability/stone_castle/damage
#
# deal damage
#
# @within player:class/knight/ability/stone_castle/lv1
#         player:class/knight/ability/stone_castle/lv2
#         player:class/knight/ability/stone_castle/lv3

# deal damage
    tag @s add this
    $execute as @e[type=#lib:mob,distance=..5] run damage @s $(damage) mace_smash
    tag @s remove this