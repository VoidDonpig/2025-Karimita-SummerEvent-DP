#> player:trigger/attakced_entity_finder/entity_finder/16
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/17

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={16-1=true}}] if entity @s[tag=mob.id_16.1] run function player:trigger/attacked_entity_finder/entity_finder/15
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={16-0=true}}] if entity @s[tag=mob.id_16.0] run function player:trigger/attacked_entity_finder/entity_finder/15