#> player:class/knight/ability/stone_castle/lv1
#
# activation
#
# @within player:class/knight/ability/stone_castle/

# buff
    effect give @s minecraft:resistance 15 1 false

# damage
    execute store result storage player: __temp__.stone_castle.damage int 1 run scoreboard players get @s class.knight.level
    function player:class/knight/ability/stone_castle/damage with storage player: __temp__.stone_castle

# reset
    data remove storage player: __temp__