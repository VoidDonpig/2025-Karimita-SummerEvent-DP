#> player:trigger/charging?bow
#
# charging process
#
# @handles player:trigger/charging_bow

# add scoreboard
    scoreboard players add @s charging_bow 1
    execute if predicate player:team/class.archer anchored eyes if score @s charging_bow matches 20 run playsound entity.experience_orb.pickup player @s ^ ^ ^ 1 2 0
    execute if predicate player:team/class.archer if score @s charging_bow matches 20 anchored eyes positioned ^ ^ ^ run function player:class/archer/ability/multiple_shot/charge_particle