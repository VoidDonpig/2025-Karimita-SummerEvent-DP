#> player:trigger/attakced_entity_finder/entity_finder/10
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/11

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={10-1=true}}] if entity @s[tag=mob.id_10.1] run function player:trigger/attacked_entity_finder/entity_finder/9
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={10-0=true}}] if entity @s[tag=mob.id_10.0] run function player:trigger/attacked_entity_finder/entity_finder/9