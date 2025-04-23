#> asset:object/ferocity/summon
#
# summon ferocity mob
#
# @within player:trigger/attacked_entity_finder/entity_finder/found

# set data
    execute in world:admin_area run summon marker 0 0 0 {Tags:["ferocity","asset","not_init"],data:{asset:{id:ferocity}}}
    execute if entity @p[tag=player.attacker,advancements={player:trigger/attacked_entity_finder={type-melee=true}}] run function asset:object/ferocity/get_melee

# roll
    scoreboard players operation $ferocity_count_roll temporary = @p[tag=player.attacker] ferocity
    scoreboard players operation $ferocity_count_roll temporary %= $100 constant
    scoreboard players operation $ferocity_count_certainly temporary = @p[tag=player.attacker] ferocity
    scoreboard players operation $ferocity_count_certainly temporary /= $100 constant
    execute store result score $ferocity_count_roll_value temporary run random value 1..100
    execute if score $ferocity_count_roll_value temporary <= $ferocity_count_roll temporary run scoreboard players add $ferocity_count_certainly temporary 1
    scoreboard players operation @n[type=marker,tag=ferocity,tag=not_init] ferocity_count = $ferocity_count_certainly temporary

# kill if
    execute as @n[type=marker,tag=ferocity,tag=not_init] unless score @s ferocity_count matches 1.. run kill @s

# remove tag
    tag @n[type=marker,tag=ferocity,tag=not_init] remove not_init

# reset
    scoreboard players reset $ferocity_count_roll temporary
    scoreboard players reset $ferocity_count_certainly temporary
    scoreboard players reset $ferocity_count_roll_value temporary
    scoreboard players reset $ferocity_damage temporary