#> player:trigger/attakced_entity_finder/entity_finder/30
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/31

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={30-1=true}}] if entity @s[tag=mob.id_30.1] run function player:trigger/attacked_entity_finder/entity_finder/29
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={30-0=true}}] if entity @s[tag=mob.id_30.0] run function player:trigger/attacked_entity_finder/entity_finder/29