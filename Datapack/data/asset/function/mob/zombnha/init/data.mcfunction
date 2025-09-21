#> asset:mob/zombnha/init/data
#
# define the data
#
# @within asset:mob/bloodthirster/init/

# set data
    data modify storage mob:init data.CustomName set value {"text": "Zombnha","color": "dark_gray"}
    #data modify storage mob:init data.CustomNameVisible set value 1b

    data modify storage mob:init data.active_effects set value [{id:"invisibility",duration:-1,"amplifier":1,"show_particles":false}]

    data modify storage mob:init data.equipment.head set value {"id":"minecraft:player_head","components":{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTVlMGZiODE5NTFmMTE2OGI2YzBmYmQ1OTM0Mjc5MDNiODEwMTQ3MzU5MDQ2YTMwM2VlMDY5NTAzZDg0ZjQyMiJ9fX0="}]}}}
    #data modify storage mob:init data.equipment.chest set value {"id":"diamond_chestplate","components":{unbreakable:{}}}
    #data modify storage mob:init data.equipment.legs set value {"id":"golden_leggings","components":{unbreakable:{}}}
    #data modify storage mob:init data.equipment.feet set value {"id":"leather_boots","components":{unbreakable:{}}}
    #data modify storage mob:init data.equipment.mainhand set value {"id":"iron_sword"}
    #data modify storage mob:init data.equipment.offhand set value {"id":"iron_sword"}

    #data modify storage mob:init data.DeathLootTable set value "entities/allay"

    data modify storage mob:init data.Silent set value 1b

    data modify storage mob:init data.PersistenceRequired set value 1b

    #data modify storage mob:init data.NoAI set value 1b

# define attribute
    data modify storage mob:init data.health set value 1000.0
    data modify storage mob:init data.damage set value 40.0
    data modify storage mob:init data.attack_knockback set value 4.0
    data modify storage mob:init data.knockback_resistance set value 1.0
    data modify storage mob:init data.movement_speed set value 0.8
    data modify storage mob:init data.armor set value 30.0
    data modify storage mob:init data.toughness set value 20.0
    data modify storage mob:init data.movement_efficiency set value 1.0
    data modify storage mob:init data.water_movement_efficiency set value 1.0
    data modify storage mob:init data.zombie_spawn_reinforcements set value 0.0
    #data modify storage mob:init data.scale set value 16.0
    data modify storage mob:init data.AbsorptionAmount set value 500

# define whether have specific events
    data modify storage mob:init data.have_always_action set value 1b
    data modify storage mob:init data.have_death_event set value 1b
    data modify storage mob:init data.have_hurt_event set value 1b

# define loot
    data modify storage mob:init data.loot.combat_exp set value 2400
    data modify storage mob:init data.loot.gold set value 120

# define boss
    #data modify storage mob:init data.boss set value 1b