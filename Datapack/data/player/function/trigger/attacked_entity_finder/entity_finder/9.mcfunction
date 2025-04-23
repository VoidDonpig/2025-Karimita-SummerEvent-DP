#> player:trigger/attakced_entity_finder/entity_finder/9
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/10

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={9-1=true}}] if entity @s[tag=mob.id_9.1] run function player:trigger/attacked_entity_finder/entity_finder/8
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={9-0=true}}] if entity @s[tag=mob.id_9.0] run function player:trigger/attacked_entity_finder/entity_finder/8