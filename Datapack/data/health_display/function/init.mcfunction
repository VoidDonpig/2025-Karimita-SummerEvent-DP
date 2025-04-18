#> health_display:init
#
# init data
#
# @within mob:init/boss_set_data

# set name visible
    data modify entity @s CustomNameVisible set value 1b

# get name
    execute unless data entity @s CustomName run function health_display:get_name
    data modify entity @s data.mob.name set from entity @s CustomName

# update display
    function health_display:update