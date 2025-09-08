#> asset:enchantment/assassination/
#
# assassinaiton
#
# @within player:trigger/attacked_entity_finder/entity_finder/found

# assassin
    execute if predicate player:team/class.assassin run function asset:enchantment/assassination/assassin

# not assassin
    execute unless predicate player:team/class.assassin if predicate {"condition":"random_chance",chance:0.001} at @n[tag=mob.victim] run function asset:enchantment/assassination/kill