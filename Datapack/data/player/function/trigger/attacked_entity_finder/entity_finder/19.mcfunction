#> player:trigger/attakced_entity_finder/entity_finder/19
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/20

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={19-1=true}}] if entity @s[tag=mob.id_19.1] run function player:trigger/attacked_entity_finder/entity_finder/18
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={19-0=true}}] if entity @s[tag=mob.id_19.0] run function player:trigger/attacked_entity_finder/entity_finder/18