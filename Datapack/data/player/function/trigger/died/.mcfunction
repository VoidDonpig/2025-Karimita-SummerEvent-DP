#> player:trigger/died/
#
# when died
#
# @within player:tick

# heal all
    scoreboard players operation @s mana = @s max_mana
    effect give @s instant_health 80 14 true
    effect give @s saturation 80 14 true

# reset
    function player:class/reset

# faint
    execute if predicate world:is_in_dungeon run function player:faint/

# statusupdate
    tag @s add statusupdate

# revoke
    scoreboard players reset @s death
    advancement revoke @s only player:trigger/died