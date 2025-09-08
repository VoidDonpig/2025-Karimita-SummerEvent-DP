#> asset:object/shadow_strike/get_melee
#
# get damage
#
# @within asset:object/shadow_strike/summon

# get damage
    tag @s add this
    scoreboard players operation @n[type=marker,tag=shadow_strike,tag=not_init] mob.id = @n[tag=this] mob.id
    scoreboard players operation @n[type=marker,tag=shadow_strike,tag=not_init] player.id = @p[tag=player.attacker] player.id

    execute store result score $shadow_strike_damage temporary run attribute @p[tag=player.attacker] attack_damage get
    execute as @p[tag=player.attacker] run function asset:object/ferocity/enchantment
    
    scoreboard players operation @n[type=marker,tag=shadow_strike,tag=not_init] shadow_strike_damage = $shadow_strike_damage temporary
    tag @s remove this