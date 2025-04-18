#> player:trigger/attakced_entity_finder/entity_finder/17
#
# find entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/18

# find attacked entity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={17-1=true}}] if entity @s[tag=mob.id_17.1] run function player:trigger/attacked_entity_finder/entity_finder/16
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={17-0=true}}] if entity @s[tag=mob.id_17.0] run function player:trigger/attacked_entity_finder/entity_finder/16