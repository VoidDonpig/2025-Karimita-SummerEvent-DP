#> lib:vanish/
#
# vanish mob
#
# @public

# kill
    scoreboard players reset @s
    execute if entity @s[type=#lib:all] run data modify entity @s DeathTime set value 9s
    tp @s ~ -128 ~
    kill @s