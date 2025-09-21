#> world:
#
# world tick
#
# @within core:main

# minecart
    execute as @e[type=#lib:minecarts,tag=!already_init,tag=!invisible_minecart] run function world:minecart/

# spawner
    execute as @e[type=marker,tag=spawner] at @s run function world:spawner/

# dungeon
    # exit
        execute as @e[type=marker,tag=dungeon_exit] at @s run function world:dungeon/exit/check