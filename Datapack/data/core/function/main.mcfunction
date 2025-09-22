#> core:main
#
# main function
#
# @handles #minecraft:tick

# world tick
    function world:
    function ui:

# player
    execute as @a[predicate=!world:is_in_afk] at @s run function player:tick

# mob
    execute as @e[type=#lib:mob,tag=!asset,tag=!dead,tag=!already_init] at @s run function mob:init/
    execute as @e[type=#lib:mob,tag=!asset,tag=!dead,tag=already_init] at @s run function mob:tick/

# asset
    execute as @e[tag=asset] at @s run function asset: with entity @s data.asset

# autokill
    execute as @e[tag=autokill] at @s run function lib:autokill/