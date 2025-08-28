#> asset:mob/elder_guardian/init/data
#
# define the data
#
# @within asset:mob/elder_guardian/init/

# set data
    data modify storage mob:init data.CustomName set value {"text":"Elder Guardian","bold":true,"color":"#698C82"}
    data modify storage mob:init data.CustomNameVisible set value 1b

    #data modify storage mob:init data.active_effects set value [{id:"fire_resistance",duration:-1,"amplifier":0,"show_particles":true}]

    #data modify storage mob:init data.equipment.head set value {"id":"diamond_helmet"}
    #data modify storage mob:init data.equipment.chest set value {"id":"diamond_chestplate"}
    #data modify storage mob:init data.equipment.legs set value {"id":"diamond_leggings"}
    #data modify storage mob:init data.equipment.feet set value {"id":"diamond_boots"}
    #data modify storage mob:init data.equipment.mainhand set value {"id":"diamond_sword"}
    #data modify storage mob:init data.equipment.offhand set value {"id":"shield"}

    #data modify storage mob:init data.DeathLootTable set value "entities/allay"

    #data modify storage mob:init data.Silent set value 1b

    #data modify storage mob:init data.PersistenceRequired set value 1b

    #data modify storage mob:init data.NoAI set value 1b

# define attribute
    data modify storage mob:init data.health set value 850
    data modify storage mob:init data.damage set value 15
    data modify storage mob:init data.attack_knockback set value 4.0
    data modify storage mob:init data.knockback_resistance set value 1.0
    #data modify storage mob:init data.movement_speed set value 1024.0
    data modify storage mob:init data.movement_efficiency set value 1.0
    data modify storage mob:init data.water_movement_efficiency set value 1.0
    #data modify storage mob:init data.zombie_spawn_reinforcements set value 1.0
    #data modify storage mob:init data.scale set value 16.0
    #data modify storage mob:init data.AbsorptionAmount set value 2048.0

# define whether have specific events
    #data modify storage mob:init data.have_always_action set value 1b
    #data modify storage mob:init data.have_death_event set value 1b
    #data modify storage mob:init data.have_hurt_event set value 1b

# define loot
    data modify storage mob:init data.loot.combat_exp set value 850
    data modify storage mob:init data.loot.gold set value 150

# define boss
    data modify storage mob:init data.boss set value 1b