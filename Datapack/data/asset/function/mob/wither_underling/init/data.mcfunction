#> asset:mob/wither_underling/init/data
#
# define the data
#
# @within asset:mob/wither_underling/init/

# set data
    data modify storage mob:init data.CustomName set value {"text":"Wither Underling","color":"gray"}
    #data modify storage mob:init data.CustomNameVisible set value 1b

    #data modify storage mob:init data.active_effects set value [{id:"resistance",duration:-1,"amplifier":3,"show_particles":false}]

    #data modify storage mob:init data.equipment.head set value {"id":"netherite_helmet",components:{unbreakable:{}}}
    #data modify storage mob:init data.equipment.chest set value {"id":"netherite_chestplate",components:{unbreakable:{}}}
    #data modify storage mob:init data.equipment.legs set value {"id":"netherite_leggings",components:{unbreakable:{}}}
    #data modify storage mob:init data.equipment.feet set value {"id":"netherite_boots",components:{unbreakable:{}}}
    #data modify storage mob:init data.equipment.mainhand set value {"id":"netherite_sword"}
    #data modify storage mob:init data.equipment.offhand set value {"id":"shield"}

    data modify storage mob:init data.DeathLootTable set value "asset:empty"

    #data modify storage mob:init data.Slient set value 1b

    data modify storage mob:init PersistenceRequired set value 0b

    #data modify storage mob:init data.NoAI set value 1b

# define attribute
    data modify storage mob:init data.health set value 2500
    #data modify storage mob:init data.damage set value 10
    #data modify storage mob:init data.attack_knockback set value 2.0
    #data modify storage mob:init data.knockback_resistance set value 1.0
    data modify storage mob:init data.movement_speed set value 0.2
    #data modify storage mob:init data.movement_efficiency set value 1.0
    #data modify storage mob:init data.water_movement_efficiency set value 1.0
    #data modify storage mob:init data.zombie_spawn_reinforcements set value 1.0
    data modify storage mob:init data.scale set value 0.5
    #data modify storage mob:init data.AbsorptionAmount set value 2048.0

# define whether have specific events
    data modify storage mob:init data.have_always_action set value 1b
    #data modify storage mob:init data.have_death_event set value 1b
    #data modify storage mob:init data.have_hurt_event set value 1b

# define exp loot
    data modify storage mob:init data.loot.combat_exp set value 200

# define boss
    data modify storage mob:init data.boss set value 1b