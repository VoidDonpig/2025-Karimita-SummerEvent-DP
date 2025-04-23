#> player:trigger/attakced_entity_finder/entity_finder/12
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/13

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={12-1=true}}] if entity @s[tag=mob.id_12.1] run function player:trigger/attacked_entity_finder/entity_finder/11
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={12-0=true}}] if entity @s[tag=mob.id_12.0] run function player:trigger/attacked_entity_finder/entity_finder/11