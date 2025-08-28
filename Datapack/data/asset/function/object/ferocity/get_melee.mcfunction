#> asset:object/ferocity/get_melee
#
# get damage
#
# @within asset:object/ferocity/summon

# add tag
    tag @s add this

# get damage
    scoreboard players operation @n[type=marker,tag=ferocity,tag=not_init] mob.id = @n[tag=this] mob.id
    scoreboard players operation @n[type=marker,tag=ferocity,tag=not_init] player.id = @p[tag=player.attacker] player.id

    execute store result score $ferocity_damage temporary run attribute @p[tag=player.attacker] attack_damage get
    execute as @p[tag=player.attacker] run function asset:object/ferocity/enchantment

    scoreboard players operation @n[type=marker,tag=ferocity,tag=not_init] ferocity_damage = $ferocity_damage temporary

# reset
    tag @s remove this