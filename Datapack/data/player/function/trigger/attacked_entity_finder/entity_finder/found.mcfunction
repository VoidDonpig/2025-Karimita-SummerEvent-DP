#> player:trigger/attacked_entity_finder/entity_finder/found
#
# found entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/0

# add tag
    tag @s add mob.victim

# set cooltime
    scoreboard players set @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={type-melee=true}}] attack_cooltime 1000

# ferocity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={type-melee=true}}] run function asset:object/ferocity/summon

# shadow strike
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={type-melee=true}},predicate=asset:armor/full/thanatos_armor] run function asset:object/shadow_strike/summon

# remove tag
    tag @s remove mob.victim