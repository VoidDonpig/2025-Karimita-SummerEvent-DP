#> player:belowname/
#
# belowname manager
#
# @within player:advancement_tick

# default
    function player:belowname/default/

# boss
    execute if score @s belowname matches 1 run function player:belowname/boss/

# remove timer
    execute if score @s health_update_timer matches 1.. run scoreboard players remove @s health_update_timer 1
    execute if score @s health_update_timer matches ..0 run scoreboard players reset @s health_update_timer
    execute if score @s health_update_timer matches ..0 run scoreboard players reset @s health_updated