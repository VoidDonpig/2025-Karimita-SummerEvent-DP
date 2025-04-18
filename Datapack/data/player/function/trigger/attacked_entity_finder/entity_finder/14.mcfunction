#> player:trigger/attakced_entity_finder/entity_finder/14
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/15

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={14-1=true}}] if entity @s[tag=mob.id_14.1] run function player:trigger/attacked_entity_finder/entity_finder/13
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={14-0=true}}] if entity @s[tag=mob.id_14.0] run function player:trigger/attacked_entity_finder/entity_finder/13