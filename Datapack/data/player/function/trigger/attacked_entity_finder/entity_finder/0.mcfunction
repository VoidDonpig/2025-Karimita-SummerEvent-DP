#> player:trigger/attakced_entity_finder/entity_finder/0
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/1

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={0-1=true}}] if entity @s[tag=mob.id_0.1] run function player:trigger/attacked_entity_finder/entity_finder/found
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={0-0=true}}] if entity @s[tag=mob.id_0.0] run function player:trigger/attacked_entity_finder/entity_finder/found