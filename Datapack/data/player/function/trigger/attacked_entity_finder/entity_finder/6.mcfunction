#> player:trigger/attakced_entity_finder/entity_finder/6
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/7

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={6-1=true}}] if entity @s[tag=mob.id_6.1] run function player:trigger/attacked_entity_finder/entity_finder/5
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={6-0=true}}] if entity @s[tag=mob.id_6.0] run function player:trigger/attacked_entity_finder/entity_finder/5