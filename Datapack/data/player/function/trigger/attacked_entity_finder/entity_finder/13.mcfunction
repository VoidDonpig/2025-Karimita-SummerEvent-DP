#> player:trigger/attakced_entity_finder/entity_finder/13
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/14

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={13-1=true}}] if entity @s[tag=mob.id_13.1] run function player:trigger/attacked_entity_finder/entity_finder/12
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={13-0=true}}] if entity @s[tag=mob.id_13.0] run function player:trigger/attacked_entity_finder/entity_finder/12