#> player:class/knight/ability/stone_castle/lv3
#
# activation
#
# @within player:class/knight/ability/stone_castle/

# buff
    effect give @s minecraft:resistance 15 3 false

# damage
    execute unless predicate world:is_in_dungeon store result storage player: __temp__.stone_castle.damage int 3 run scoreboard players get @s class.knight.level
    execute if predicate world:is_in_dungeon store result storage player: __temp__.stone_castle.damage int 9 run scoreboard players get @s class.knight.level
    function player:class/knight/ability/stone_castle/damage with storage player: __temp__.stone_castle

# reset
    data remove storage player: __temp__