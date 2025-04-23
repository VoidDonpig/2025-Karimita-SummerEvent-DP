#> player:trigger/attakced_entity_finder/entity_finder/20
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/21

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={20-1=true}}] if entity @s[tag=mob.id_20.1] run function player:trigger/attacked_entity_finder/entity_finder/19
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={20-0=true}}] if entity @s[tag=mob.id_20.0] run function player:trigger/attacked_entity_finder/entity_finder/19