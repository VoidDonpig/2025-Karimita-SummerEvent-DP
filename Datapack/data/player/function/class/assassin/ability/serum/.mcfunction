#> player:class/assassin/ability/serum/
#
# serum process
#
# @within player:trigger/consumed_food

# claer debuff
    function lib:clear_debuff/

# sfx
    playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.6 1.6 0.0
    particle minecraft:happy_villager ~ ~1.0 ~ 0.3 0.4 0.3 0 12 normal