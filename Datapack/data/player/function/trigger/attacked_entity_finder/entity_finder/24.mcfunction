#> player:trigger/attakced_entity_finder/entity_finder/24
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/25

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={24-1=true}}] if entity @s[tag=mob.id_24.1] run function player:trigger/attacked_entity_finder/entity_finder/23
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={24-0=true}}] if entity @s[tag=mob.id_24.0] run function player:trigger/attacked_entity_finder/entity_finder/23