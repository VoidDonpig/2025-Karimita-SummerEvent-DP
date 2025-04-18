#> asset:object/shadow_strike/summon
#
# summon shadow_strike mob
#
# @within player:trigger/attacked_entity_finder/entity_finder/found

# set data
    execute in world:admin_area run summon marker 0 0 0 {Tags:["shadow_strike","asset","not_init"],data:{asset:{id:shadow_strike}}}
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={type-melee=true}}] run function asset:object/shadow_strike/get_melee

# roll
    scoreboard players set @n[type=marker,tag=shadow_strike,tag=not_init] shadow_strike_count 1

# remove tag
    tag @n[type=marker,tag=shadow_strike,tag=not_init] remove not_init