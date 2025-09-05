#> player:class/knight/ability/powerful_slash/damage
#
# damage
#
# @within player:class/knight/ability/powerful_slash/do

# enchantment
    tag @s add this
    scoreboard players operation $powerful_slash_damage temporary = $damage temporary
    execute as @p[tag=player.attacker] run function player:class/knight/ability/powerful_slash/enchantment
    execute if entity @p[tag=player.attacker,predicate=lib:is_falling] run scoreboard players operation $powerful_slash_damage temporary *= $3 constant
    execute if entity @p[tag=player.attacker,predicate=lib:is_falling] run scoreboard players operation $powerful_slash_damage temporary /= $2 constant
    execute store result storage player: powerful_slash.damage float 1.0 run scoreboard players get $powerful_slash_damage temporary

# damage
    function player:class/knight/ability/powerful_slash/apply with storage player: powerful_slash

# reset
    tag @s remove this
    tag @s remove hitted
    scoreboard players reset $powerful_slash_damage temporary