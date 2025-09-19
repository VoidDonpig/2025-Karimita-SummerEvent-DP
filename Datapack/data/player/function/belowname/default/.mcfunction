#> player:belowname/default/
#
# default
#
# @within player:belowname/default/

# set
    scoreboard players display numberformat @s belowname_display fixed ["",{score:{name:"@s",objective:"health"}}," ",{text:"❤",color:"red"}]

    execute if score @s health_update_timer matches 7..9 if score @s health_updated matches 0 run scoreboard players display numberformat @s belowname_display fixed ["",{score:{name:"@s",objective:"health"},color:red}," ",{text:"❤",color:red}]

    execute if score @s health_update_timer matches 1..3 if score @s health_updated matches 0 run scoreboard players display numberformat @s belowname_display fixed ["",{score:{name:"@s",objective:"health"},color:red}," ",{text:"❤",color:red}]

    execute if score @s health_update_timer matches 7..9 if score @s health_updated matches 1 run scoreboard players display numberformat @s belowname_display fixed ["",{score:{name:"@s",objective:"health"},color:green}," ",{text:"❤",color:red}]

    execute if score @s health_update_timer matches 1..3 if score @s health_updated matches 1 run scoreboard players display numberformat @s belowname_display fixed ["",{score:{name:"@s",objective:"health"},color:green}," ",{text:"❤",color:red}]