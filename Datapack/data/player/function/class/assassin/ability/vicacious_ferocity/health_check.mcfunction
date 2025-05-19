#> player:class/assassin/ability/vicacious_ferocity/health_check
#
# health check
#
# @within player:class/assassin/ability/vicacious_ferocity/

# check
    tag @s add health_ok
    scoreboard players set $needed_health temporary 8
    function player:status/health/check

# run
    execute if entity @s[tag=health_ok] run function player:class/assassin/ability/vicacious_ferocity/buff

# reset
    tag @s remove health_ok
    scoreboard players reset $needed_health temporary