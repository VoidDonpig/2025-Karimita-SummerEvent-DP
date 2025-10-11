#> mob:init/set_data
#
# set data
#
# @within mob:init/

# set data
    execute if data storage mob:init data.CustomName run data modify entity @s CustomName set from storage mob:init data.CustomName
    execute if data storage mob:init data.active_effects run data modify entity @s active_effects set from storage mob:init data.active_effects
    execute if data storage mob:init data.equipment run data modify entity @s equipment set from storage mob:init data.equipment
    execute if data storage mob:init data.DeathLootTable run data modify entity @s DeathLootTable set from storage mob:init data.DeathLootTable
    execute if data storage mob:init data.Silent run data modify entity @s Silent set from storage mob:init data.Silent
    execute if data storage mob:init data.CustomNameVisible run data modify entity @s CustomNameVisible set from storage mob:init data.CustomNameVisible
    execute if data storage mob:init data.PersistenceRequired run data modify entity @s PersistenceRequired set from storage mob:init data.PersistenceRequired
    execute if data storage mob:init data.NoAI run data modify entity @s NoAI set from storage mob:init data.NoAI
    execute if data storage mob:init data.NoGravity run data modify entity @s NoGravity set from storage mob:init data.NoGravity

    execute if data storage mob:init data.armor run function mob:init/attribute/armor with storage mob:init data
    execute if data storage mob:init data.armor_toughness run function mob:init/attribute/armor_toughness with storage mob:init data
    execute if data storage mob:init data.health run function mob:init/attribute/health with storage mob:init data
    execute if data storage mob:init data.damage run function mob:init/attribute/damage with storage mob:init data
    execute if data storage mob:init data.attack_knockback run function mob:init/attribute/attack_knockback with storage mob:init data
    execute if data storage mob:init data.knockback_resistance run function mob:init/attribute/knockback_resistance with storage mob:init data
    execute if data storage mob:init data.explosion_knockback_resistance run function mob:init/attribute/explosion_knockback_resistance with storage mob:init data
    execute if data storage mob:init data.movement_speed run function mob:init/attribute/movement_speed with storage mob:init data
    execute if data storage mob:init data.movement_efficiency run function mob:init/attribute/movement_efficiency with storage mob:init data
    execute if data storage mob:init data.water_movement_efficiency run function mob:init/attribute/water_movement_efficiency with storage mob:init data
    execute if data storage mob:init data.zombie_spawn_reinforcements run function mob:init/attribute/zombie_spawn_reinforcements with storage mob:init data
    execute if data storage mob:init data.scale run function mob:init/attribute/scale with storage mob:init data
    execute if data storage mob:init data.AbsorptionAmount run function mob:init/attribute/max_absorption with storage mob:init data

    execute if data storage mob:init data.AbsorptionAmount run data modify entity @s AbsorptionAmount set from storage mob:init data.AbsorptionAmount

    execute if data storage mob:init data{have_always_action:1b} run tag @s add mob.have_always_action
    execute if data storage mob:init data{prevent_drowned:1b} run tag @s add mob.prevent_drowned
    execute if data storage mob:init data.have_death_event run data modify entity @s data.mob.have_death_event set from storage mob:init data.have_death_event
    execute if data storage mob:init data.have_hurt_event run data modify entity @s data.mob.have_hurt_event set from storage mob:init data.have_hurt_event

    execute if data storage mob:init data.profile run data modify entity @s profile set from storage mob:init data.profile
    execute if data storage mob:init data.hide_description run data modify entity @s hide_description set from storage mob:init data.hide_description
    execute if data storage mob:init data.immovable run data modify entity @s immovable set from storage mob:init data.immovable

# set health
    execute store result entity @s Health float 1.0 run attribute @s minecraft:max_health get

# set loot
    execute if data storage mob:init data.loot.combat_exp run data modify entity @s data.mob.loot.exp set from storage mob:init data.loot.combat_exp
    execute if data storage mob:init data.loot.gold run data modify entity @s data.mob.loot.gold set from storage mob:init data.loot.gold

# set boss
    data modify entity @s data.mob.boss set value 0b
    execute if data storage mob:init data.boss run data modify entity @s data.mob.boss set from storage mob:init data.boss
    execute if data storage mob:init {data:{boss:1b}} run function mob:init/boss_set_data