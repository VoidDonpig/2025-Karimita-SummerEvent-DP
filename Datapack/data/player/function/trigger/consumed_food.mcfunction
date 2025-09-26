#> player:trigger/consumed_food
#
# consumed food trigger
#
# @handles advancement player:trigger/consumed_food

# revoke
    advancement revoke @s only player:trigger/consumed_food

# serum
    execute if predicate player:team/class.assassin run function player:class/assassin/ability/serum/