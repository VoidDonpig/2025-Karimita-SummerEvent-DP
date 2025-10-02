#> player:class/assassin/ability/vicacious_ferocity/health_check
#
# health check
#
# @within player:class/assassin/ability/vicacious_ferocity/

# check
    execute store result score $player.current_health temporary run data get entity @s Health 100
    execute store result score $needed_health temporary run attribute @s max_health get 10
    execute if score $needed_health temporary < $player.current_health temporary run tag @s add health_ok

# fail
    execute unless entity @s[tag=health_ok] run function player:class/assassin/ability/vicacious_ferocity/fail

# run
    execute if entity @s[tag=health_ok] run function player:class/assassin/ability/vicacious_ferocity/buff

# reset
    tag @s remove health_ok
    scoreboard players reset $player.current_health
    scoreboard players reset $needed_health temporary