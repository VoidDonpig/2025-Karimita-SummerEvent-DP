#> player:trigger/attacked_entity_finder/entity_finder/found
#
# found entity
#
# @within player:trigger/attakced_entity_finder/entity_finder/0

# add tag
    tag @s add mob.victim

# assassination
    execute if items entity @p[tag=player.attacker] weapon.mainhand *[enchantments~[{"enchantments":"asset:assassination"}]] unless data entity @s {data:{mob:{boss:1b}}} as @p[tag=player.attacker] run function asset:enchantment/assassination/

# ferocity
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={type-melee=true}}] run function asset:object/ferocity/summon

# shadow strike
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={type-melee=true,shadow_strike=false}},predicate=asset:armor/full/thanatos_armor] run function asset:object/shadow_strike/summon

# remove tag
    tag @s remove mob.victim