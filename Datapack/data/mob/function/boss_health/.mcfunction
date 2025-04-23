#> mob:boss_health/
#
# mob health event
#
# @handles mob:

# calculation
    execute store result score $damage temporary run data get entity @s AbsorptionAmount -1
    scoreboard players operation $damage temporary += $2048 constant
    execute if entity @s[tag=mob.invul] run scoreboard players set $damage temporary 0
    scoreboard players operation @s mob.health -= $damage temporary
    execute if score @s mob.health matches ..-1 run scoreboard players set @s mob.health 0

# update
    function health_display:update

# death
    execute if score @s mob.health matches 0 run tag @s add dead

# reset
    scoreboard players reset $damage temporary
    data modify entity @s AbsorptionAmount set value 2048.0f
    data modify entity @s Health set value 1024.0f