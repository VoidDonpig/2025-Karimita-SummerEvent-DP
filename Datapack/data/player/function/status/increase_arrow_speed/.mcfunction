#> player:status/increase_arrow_speed/
#
# increase arrow speed
#
# @within player:trigger/shot_arrow/

# convert score into data
    scoreboard players set $arrow_speed temporary 100
    execute store result storage player:increase_arrow_damage __temp__.x int 1 run scoreboard players operation $arrow_speed temporary += @p[tag=arrow_shot] arrow_speed_increase

# increase speed
    function player:status/increase_arrow_speed/increase with storage player:increase_arrow_damage __temp__

# reset
    scoreboard players reset $arrow_speed temporary