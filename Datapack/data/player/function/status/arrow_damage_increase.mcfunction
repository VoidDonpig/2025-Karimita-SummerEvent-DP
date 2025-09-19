#> player:status/arrow_damage_increase
#
# damage increase arrow
#
# @within player:trigger/shot_arrow/

# set data
    execute store result score $damage temporary run data get entity @s damage 100

    scoreboard players operation $adding_damage temporary = $damage temporary
    scoreboard players operation $adding_damage temporary *= @p[tag=arrow_shot] arrow_damage_increase
    scoreboard players operation $adding_damage temporary /= $100 constant

    execute store result entity @s damage float 0.01 run scoreboard players operation $damage temporary += $adding_damage temporary

# reset
    scoreboard players reset $damage temporary
    scoreboard players reset $adding_damage
    tellraw @s {"nbt":"Health","entity":"@s"}