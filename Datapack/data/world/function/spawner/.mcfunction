#> world:spawner/
#
# spawner
#
# @within world:

# init
    execute if entity @s[tag=!already_init] run function world:spawner/init

# main
    execute if entity @p[distance=..32] run function world:spawner/main