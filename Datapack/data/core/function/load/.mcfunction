#> core:load/
#
# load function
#
# @handles #minecraft:load

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
    execute in world:admin_area run setblock 0 99 0 redstone_block
    execute in world:admin_area run setblock 0 100 0 activator_rail[powered=true]

# set custom recipe
    function core:load/recipe

# for first time loading
    execute unless data storage core: {loaded:1b} run function core:load/first_time

# send message if this function was loaded
    tellraw @a[tag=mita_winter_event.admin_authed_by_a675a99c-635e-414f-9dc5-b203d1c03e8e] {"text": "\"core:load/\" was loaded successfully.","color":"light_purple"}