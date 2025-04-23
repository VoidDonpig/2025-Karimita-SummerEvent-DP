#> player:class/assassin/ability/assassin_leap/charge
#
# charging process
#
# @within player:class/assassin/ability/assassin_leap/

# charge
    scoreboard players add @s assassin_leap_charging 1
    execute if score @s assassin_leap_charging matches 4 run function player:class/assassin/ability/assassin_leap/buff