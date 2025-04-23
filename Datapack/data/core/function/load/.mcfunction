#> core:load/
#
# load function
#
# @handles #minecraft:load

# for first time loading
    execute unless data storage core: {loaded:1b} run function core:load/first_time

# change gamerule
    function core:load/gamerule

# create teams
    function core:load/team

# define scoreboards
    function core:load/scoreboard/

# set object
    execute in world:admin_area run forceload add -1 -1 0 0
    kill 83a-51-1-0-0
    kill 83a-51-1-0-1
    kill 83a-51-1-0-2
    execute in world:admin_area run summon minecraft:marker 0.0 0.0 0.0 {UUID:[I; 2106,5308417,0,0]}
    execute in world:admin_area run summon minecraft:armor_stand 0.0 0.0 0.0 {UUID:[I; 2106,5308417,0,1],Marker:1b,equipment:{}}
    execute in world:admin_area run summon minecraft:text_display 0.0 0.0 0.0 {alignment:center,UUID:[I; 2106,5308417,0,2]}
    execute in world:admin_area run setblock 0 0 0 white_shulker_box

# set custom recipe
    function core:load/recipe

# send message if this function was loaded
    tellraw @a[tag=admin] {"text": "\"core:load/\" was loaded successfully.","color":"light_purple"}