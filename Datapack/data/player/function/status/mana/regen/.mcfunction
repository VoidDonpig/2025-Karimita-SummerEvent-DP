#> player:status/mana/regen/
#
# regen mana
#
# @within player:tick
# 
# @output
#   score $regen_mana temporary
#       define regeneration mana for player:status/mana/regen/apply

# calculate regen amount
    scoreboard players operation $regen_mana temporary = @s max_mana
    scoreboard players operation $regen_mana temporary /= $100 constant
    scoreboard players operation $regen_mana temporary > $1 constant
    
# overflowing intelligence
    execute if predicate asset:armor/full/athene_armor run scoreboard players operation $regen_mana temporary *= $2 constant

# mana pool
    execute if predicate player:team/class.wizard run function player:class/wizard/ability/mana_regeneration_boost/

# orb buff
    execute unless entity @e[type=armor_stand,distance=..28,nbt={data:{asset:{id:reflexivization_orb}}}] unless entity @e[type=armor_stand,distance=..24,nbt={data:{asset:{id:recovery_orb}}}] if entity @e[type=armor_stand,distance=..20,nbt={data:{asset:{id:mending_orb}}}] run function asset:object/mending_orb/mana_regen
    execute unless entity @e[type=armor_stand,distance=..28,nbt={data:{asset:{id:reflexivization_orb}}}] if entity @e[type=armor_stand,distance=..24,nbt={data:{asset:{id:recovery_orb}}}] run function asset:object/recovery_orb/mana_regen
    execute if entity @e[type=armor_stand,distance=..28,nbt={data:{asset:{id:reflexivization_orb}}}] run function asset:object/reflexivization_orb/mana_regen

# apply
    function player:status/mana/regen/apply