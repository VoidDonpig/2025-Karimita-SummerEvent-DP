#> player:trigger/attakced_entity_finder/entity_finder/1
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/2

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={1-1=true}}] if entity @s[tag=mob.id_1.1] run function player:trigger/attacked_entity_finder/entity_finder/0
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={1-0=true}}] if entity @s[tag=mob.id_1.0] run function player:trigger/attacked_entity_finder/entity_finder/0