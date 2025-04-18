#> player:class/assassin/ability/serum/
#
# serum process
#
# @handles player:class/assassin/serum

# claer debuff
    function lib:clear_debuff/

# sfx
    playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1.0 1.6 0.0
    particle minecraft:happy_villager ~ ~1.0 ~ 0.2 0.4 0.2 0 16 force @a

# reset
    advancement revoke @s only player:class/assassin/serum