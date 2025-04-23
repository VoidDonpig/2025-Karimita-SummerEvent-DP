#> player:trigger/attakced_entity_finder/
#
# entity finder
#
# @handles player:trigger/attacked_entity_finder

# tag this
    tag @s add player.attacker

# find attacking entity
    execute if entity @s[advancements={player:trigger/attacked_entity_finder={ferocity=false}}] as @e[type=#lib:mob,scores={mob.id=0..},distance=..128] run function player:trigger/attacked_entity_finder/entity_finder/31

# remove attacker tag
    tag @s remove player.attacker

# reset
    advancement revoke @s only player:trigger/attacked_entity_finder