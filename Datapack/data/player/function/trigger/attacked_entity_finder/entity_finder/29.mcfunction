#> player:trigger/attakced_entity_finder/entity_finder/29
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/30

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={29-1=true}}] if entity @s[tag=mob.id_29.1] run function player:trigger/attacked_entity_finder/entity_finder/28
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={29-0=true}}] if entity @s[tag=mob.id_29.0] run function player:trigger/attacked_entity_finder/entity_finder/28