#> lib:player_health/modify
#
# modify player health
#
# @within lib:player_health/check

# trim data
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    scoreboard players operation @s player.modified_health < $player.current_max_health temporary

# modify health
    attribute @s max_health modifier add lib:player_health.max_health.24 -838.8607 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.23 419.4304 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.23 -419.4304 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.22 209.7152 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.22 -209.7152 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.21 104.8576 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.21 -104.8576 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.20 52.4288 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.20 -52.4288 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.19 26.2144 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.19 -26.2144 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.18 13.1072 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.18 -13.1072 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.17 6.5536 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.17 -6.5536 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.16 3.2768 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.16 -3.2768 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.15 1.6384 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.15 -1.6384 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.14 0.8192 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.14 -0.8192 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.13 0.4096 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.13 -0.4096 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.12 0.2048 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.12 -0.2048 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.11 0.1024 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.11 -0.1024 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.10 0.0512 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.10 -0.0512 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.9 0.0256 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.9 -0.0256 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.8 0.0128 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.8 -0.0128 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.7 0.0064 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.7 -0.0064 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.6 0.0032 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.6 -0.0032 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.5 0.0016 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.5 -0.0016 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.4 0.0008 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.4 -0.0008 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.3 0.0004 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.3 -0.0004 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.2 0.0002 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.2 -0.0002 add_value
    execute store result score $player.current_max_health temporary run attribute @s max_health get 100
    execute if score @s player.modified_health > $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.1 0.0001 add_value
    execute if score @s player.modified_health <= $player.current_max_health temporary run attribute @s max_health modifier add lib:player_health.max_health.1 -0.0001 add_value
    
# heal
    effect give @s instant_health 1 8 true

# add tag
    tag @s add lib.player_health.modified

# reset
    scoreboard players reset @s player.modified_health
    data remove storage lib: __temp__.health_modifier