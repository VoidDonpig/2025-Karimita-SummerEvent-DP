#> player:trigger/attakced_entity_finder/entity_finder/27
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/28

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={27-1=true}}] if entity @s[tag=mob.id_27.1] run function player:trigger/attacked_entity_finder/entity_finder/26
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={27-0=true}}] if entity @s[tag=mob.id_27.0] run function player:trigger/attacked_entity_finder/entity_finder/26