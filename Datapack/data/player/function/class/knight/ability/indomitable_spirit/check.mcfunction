#> player:class/knight/ability/indomitable_spirit/check
#
# check if enable to use
#
# @within player:class/knight/

# check health ratio
    tag @s add ability_ok
    function lib:get_health_ratio/
    execute if score @s health_ratio matches 51.. run tag @s remove ability_ok

# timer
    execute if score @s indominatable_spirit_timer matches 1.. run scoreboard players remove @s indominatable_spirit_timer 1

# ability
    execute if entity @s[tag=ability_ok] unless score @s indominatable_spirit_timer matches 1.. if score @s class.knight.level matches 1..19 run function player:class/knight/ability/indomitable_spirit/lv1
    execute if entity @s[tag=ability_ok] unless score @s indominatable_spirit_timer matches 1.. if score @s class.knight.level matches 20..39 run function player:class/knight/ability/indomitable_spirit/lv2
    execute if entity @s[tag=ability_ok] unless score @s indominatable_spirit_timer matches 1.. if score @s class.knight.level matches 40.. run function player:class/knight/ability/indomitable_spirit/lv3

# reset
    tag @s remove ability_ok