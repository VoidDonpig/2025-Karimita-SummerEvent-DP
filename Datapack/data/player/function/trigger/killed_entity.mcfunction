#> player:trigger/killed_entity
#
# killed entity trigger
#
# @handles advancement player:trigger/killed_entity

# revoke
    advancement revoke @s only player:trigger/killed_entity

# bloodlust
    execute if predicate player:team/class.assassin run function player:class/assassin/ability/bloodlust/