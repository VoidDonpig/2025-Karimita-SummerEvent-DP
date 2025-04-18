#> lib:autokill/
#
# auto kill method
#
# @within core:main

# auto kill
    execute if entity @s[tag=no_vehicle_kill,predicate=!lib:vehicle] run function lib:vanish/
    execute if entity @s[tag=no_passenger_kill,predicate=!lib:passenger] run function lib:vanish/
    execute if score @s autokill_timer matches 1.. run function lib:autokill/killtimer/