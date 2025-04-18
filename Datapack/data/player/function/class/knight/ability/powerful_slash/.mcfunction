#> player:class/knight/ability/powerful_slash/
#
# powerful slash process
#
# @handles player:class/knight/powerful_slash

# act
    execute unless score @s powerful_slash_cooltime matches 1.. run function player:class/knight/ability/powerful_slash/do

# reset
    advancement revoke @s only player:class/knight/powerful_slash