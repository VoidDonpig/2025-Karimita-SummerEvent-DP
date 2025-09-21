#> player:trigger/attakced_entity_finder/
#
# entity finder
#
# @handles player:trigger/attacked_entity_finder

# tag this
    tag @s add player.attacker

# powerful slash
    execute if entity @s[predicate=player:team/class.knight,advancements={player:trigger/attacked_entity_finder={sword=true}}] unless score @s powerful_slash_cooltime matches 1.. run function player:class/knight/ability/powerful_slash/do

# mana regen in dungeon
    execute if entity @s[advancements={player:trigger/attacked_entity_finder={type-melee=true}}] run function player:status/mana/regen/

# hit sound
    execute as @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={type-projectile=true}}] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 0.8 1

# find attacking entity
    execute if entity @s[advancements={player:trigger/attacked_entity_finder={ferocity=false}}] as @e[type=#lib:mob,scores={mob.id=0..},distance=..128] run function player:trigger/attacked_entity_finder/entity_finder/31

# remove attacker tag
    tag @s remove player.attacker

# reset
    advancement revoke @s only player:trigger/attacked_entity_finder