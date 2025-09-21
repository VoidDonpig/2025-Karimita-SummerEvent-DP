#> asset:mob/beheaded_knight/init/data
#
# define the data
#
# @within asset:mob/beheaded_knight/init/

# set data
    data modify storage mob:init data.CustomName set value {"text": "Beheaded Knight","color": "gray"}
    #data modify storage mob:init data.CustomNameVisible set value 1b

    data modify storage mob:init data.active_effects set value [{id:"invisibility",duration:-1,"amplifier":255,"show_particles":false}]

    #data modify storage mob:init data.equipment.head set value {"id":"minecraft:player_head","components":{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDljMTUzYTIyYTc4OGI1NDYyMjExMWY1NGJkNTZmOTFiNzdlODZiYjU4ODEyNTAyZTQ3MDFiMmIzMmViN2UzYSJ9fX0="}]}}}
    data modify storage mob:init data.equipment.chest set value {"id":"iron_chestplate","components":{unbreakable:{}}}
    data modify storage mob:init data.equipment.legs set value {"id":"iron_leggings","components":{unbreakable:{}}}
    data modify storage mob:init data.equipment.feet set value {"id":"iron_boots","components":{unbreakable:{}}}
    data modify storage mob:init data.equipment.mainhand set value {"id":"iron_sword"}
    data modify storage mob:init data.equipment.offhand set value {"id":"iron_sword"}

    #data modify storage mob:init data.DeathLootTable set value "entities/allay"

    data modify storage mob:init data.Silent set value 1b

    data modify storage mob:init data.PersistenceRequired set value 1b

    #data modify storage mob:init data.NoAI set value 1b

# define attribute
    data modify storage mob:init data.health set value 60.0
    data modify storage mob:init data.damage set value 13.0
    data modify storage mob:init data.attack_knockback set value 0.6
    data modify storage mob:init data.knockback_resistance set value 1.0
    data modify storage mob:init data.movement_speed set value 0.25
    data modify storage mob:init data.movement_efficiency set value 1.0
    data modify storage mob:init data.water_movement_efficiency set value 1.0
    data modify storage mob:init data.zombie_spawn_reinforcements set value 0.0
    #data modify storage mob:init data.scale set value 16.0
    data modify storage mob:init data.AbsorptionAmount set value 20

# define whether have specific events
    data modify storage mob:init data.have_always_action set value 1b
    data modify storage mob:init data.have_death_event set value 1b
    data modify storage mob:init data.have_hurt_event set value 1b

# define loot
    data modify storage mob:init data.loot.combat_exp set value 60
    data modify storage mob:init data.loot.gold set value 20

# define boss
    #data modify storage mob:init data.boss set value 1b