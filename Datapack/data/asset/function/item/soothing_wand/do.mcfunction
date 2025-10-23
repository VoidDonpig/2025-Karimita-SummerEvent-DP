#> asset:item/soothing_wand/do
#
# do
#
# @within asset:item/soothing_wand/

# remove mana
    scoreboard players operation @s mana -= $needed_mana temporary

# cooltime
    scoreboard players set @s healing_wand_cooltime 200

# heal
    execute unless predicate player:team/class.healer run effect give @s instant_health 1 0 true
    execute if predicate player:team/class.healer run function asset:item/soothing_wand/healer/

# sfx
    execute anchored eyes run particle heart ^ ^0.3 ^ 0.0 0.0 0.0 0 1 normal
    playsound entity.experience_orb.pickup player @a[distance=..16] ~ ~ ~ 1 2