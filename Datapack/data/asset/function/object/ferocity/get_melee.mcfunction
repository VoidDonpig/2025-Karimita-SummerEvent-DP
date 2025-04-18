#> asset:object/ferocity/get_melee
#
# get damage
#
# @within asset:object/ferocity/summon

# get damage
    tag @s add this
    scoreboard players operation @n[type=marker,tag=ferocity,tag=not_init] mob.id = @n[tag=this] mob.id
    scoreboard players operation @n[type=marker,tag=ferocity,tag=not_init] player.id = @p[tag=player.attacker] player.id
    execute store result score $ferocity_damage temporary run attribute @p[tag=player.attacker] attack_damage get
    scoreboard players operation @n[type=marker,tag=ferocity,tag=not_init] ferocity_damage = $ferocity_damage temporary
    tag @s remove this