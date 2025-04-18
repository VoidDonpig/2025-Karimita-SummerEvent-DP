#> player:class/knight/
#
# knight tick function
#
# @within player:tick

# indomitable spirit
    function player:class/knight/ability/indomitable_spirit/check

# stone castle
    execute if predicate player:is_sneaking unless score @s stone_castle_cooltime matches 1.. run function player:class/knight/ability/stone_castle/

# cooltime
    execute if score @s powerful_slash_cooltime matches 1.. run scoreboard players remove @s powerful_slash_cooltime 1
    execute if score @s powerful_slash_cooltime matches 0 run scoreboard players reset @s powerful_slash_cooltime
    execute if score @s stone_castle_cooltime matches 1.. run scoreboard players remove @s stone_castle_cooltime 1
    execute if score @s stone_castle_cooltime matches 0 run scoreboard players reset @s stone_castle_cooltime