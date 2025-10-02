#> lib:player_health/check
#
# check if it is enable to modify health
#
# @within player:advancement_tick

# check
    execute store result score $player.current_health temporary run data get entity @s Health 100
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    scoreboard players operation $player.current_health temporary -= $player.current_max_health temporary

# if succeeded modify health
    execute if score $player.current_health temporary matches ..0 run function lib:player_health/modify

# reset
    scoreboard players reset $player.current_health temporary
    scoreboard players reset $player.current_max_health temporary