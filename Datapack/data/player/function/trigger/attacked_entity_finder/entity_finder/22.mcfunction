#> player:trigger/attakced_entity_finder/entity_finder/22
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/23

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={22-1=true}}] if entity @s[tag=mob.id_22.1] run function player:trigger/attacked_entity_finder/entity_finder/21
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={22-0=true}}] if entity @s[tag=mob.id_22.0] run function player:trigger/attacked_entity_finder/entity_finder/21