#> player:trigger/died/
#
# when died
#
# @within player:tick

# heal all
    scoreboard players operation @s mana = @s max_mana
    effect give @s instant_health 80 14 true
    effect give @s saturation 80 14 true

# invul
    scoreboard players set @s player.invul_timer 80

# reset
    function player:class/reset

# faint
    execute if entity @s[tag=player.faint_enabled] run function player:faint/

# statusupdate
    tag @s add statusupdate

# revoke
    scoreboard players reset @s death
    advancement revoke @s only player:trigger/died