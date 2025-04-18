#> player:trigger/attakced_entity_finder/entity_finder/4
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/5

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={4-1=true}}] if entity @s[tag=mob.id_4.1] run function player:trigger/attacked_entity_finder/entity_finder/3
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={4-0=true}}] if entity @s[tag=mob.id_4.0] run function player:trigger/attacked_entity_finder/entity_finder/3