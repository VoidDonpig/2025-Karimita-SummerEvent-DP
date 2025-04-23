#> player:trigger/attakced_entity_finder/entity_finder/21
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/22

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={21-1=true}}] if entity @s[tag=mob.id_21.1] run function player:trigger/attacked_entity_finder/entity_finder/20
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={21-0=true}}] if entity @s[tag=mob.id_21.0] run function player:trigger/attacked_entity_finder/entity_finder/20