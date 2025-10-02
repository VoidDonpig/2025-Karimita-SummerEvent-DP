#> lib:player_health/modify
#
# modify player health
#
# @within lib:player_health/check

# trim data
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    scoreboard players operation @s player.modified_health < $player.current_max_health temporary
    execute store result storage lib: __temp__.health_modifier float 0.01 run scoreboard players operation @s player.modified_health -= $player.current_max_health temporary
    data modify storage lib: __temp__.health_modifier set string storage lib: __temp__.health_modifier 0 -1

# macro
    function lib:player_health/macro with storage lib: __temp__

# heal
    effect give @s instant_health 1 8 true

# add tag
    tag @s add lib.player_health.modified

# reset
    scoreboard players reset @s player.modified_health
    data remove storage lib: __temp__.health_modifier