#> player:trigger/attakced_entity_finder/entity_finder/31
#
# find entity
#
# @within player:trigger/attacked_entity_finder/

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={31-1=true}}] if entity @s[tag=mob.id_31.1] run function player:trigger/attacked_entity_finder/entity_finder/30
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={31-0=true}}] if entity @s[tag=mob.id_31.0] run function player:trigger/attacked_entity_finder/entity_finder/30