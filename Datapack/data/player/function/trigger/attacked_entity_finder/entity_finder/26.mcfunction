#> player:trigger/attakced_entity_finder/entity_finder/26
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/27

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={26-1=true}}] if entity @s[tag=mob.id_26.1] run function player:trigger/attacked_entity_finder/entity_finder/25
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={26-0=true}}] if entity @s[tag=mob.id_26.0] run function player:trigger/attacked_entity_finder/entity_finder/25