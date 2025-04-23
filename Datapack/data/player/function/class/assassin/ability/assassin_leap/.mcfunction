#> player:class/assassin/ability/assassin_leap/
#
# assassin leap process
#
# @within player:class/assassin/

# charge
    execute if predicate player:is_sneaking if predicate lib:is_on_ground run function player:class/assassin/ability/assassin_leap/charge

# timer
    execute if score @s assassin_leap_timer matches 1.. run scoreboard players remove @s assassin_leap_timer 1
    execute if score @s assassin_leap_timer matches ..0 run scoreboard players reset @s assassin_leap_count
    execute if score @s assassin_leap_timer matches ..0 run scoreboard players reset @s assassin_leap_timer

# reset
    execute if score @s assassin_leap_charging matches 1.. unless predicate player:is_sneaking run scoreboard players reset @s assassin_leap_charging