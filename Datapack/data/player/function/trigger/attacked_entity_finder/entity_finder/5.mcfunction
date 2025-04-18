#> player:trigger/attakced_entity_finder/entity_finder/5
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/6

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={5-1=true}}] if entity @s[tag=mob.id_5.1] run function player:trigger/attacked_entity_finder/entity_finder/4
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={5-0=true}}] if entity @s[tag=mob.id_5.0] run function player:trigger/attacked_entity_finder/entity_finder/4