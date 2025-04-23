#> player:trigger/attakced_entity_finder/entity_finder/7
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/8

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={7-1=true}}] if entity @s[tag=mob.id_7.1] run function player:trigger/attacked_entity_finder/entity_finder/6
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={7-0=true}}] if entity @s[tag=mob.id_7.0] run function player:trigger/attacked_entity_finder/entity_finder/6