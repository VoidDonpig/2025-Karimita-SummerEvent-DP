#> asset:mob/divine_creation/init/data
#
# define the data
#
# @within asset:mob/divine_creation/init/

# set data
    data modify storage mob:init data.CustomName set value {"text":"✪ Divine Creation ✪","color":"white","bold":true}
    #data modify storage mob:init data.CustomNameVisible set value 1b

    data modify storage mob:init data.active_effects set value [{id:"resistance",duration:-1,"amplifier":3,"show_particles":false},{id:"regeneration",duration:-1,"amplifier":1,"show_particles":false},{id:"fire_resistance",duration:-1,"amplifier":0,"show_particles":false}]

    data modify storage mob:init data.equipment.head set value {"id":"leather_helmet","components":{"minecraft:dyed_color":16777215,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"},"minecraft:enchantments":{"protection":20},unbreakable:{},"minecraft:attribute_modifiers":[{id:"divine_creation_head_armor",type:"armor",amount:30,operation:"add_value"},{id:"divine_creation_head_armor_toughness",type:"armor_toughness",amount:20,operation:"add_value"}]}}
    data modify storage mob:init data.equipment.chest set value {"id":"leather_chestplate","components":{"minecraft:dyed_color":16777215,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"},"minecraft:enchantments":{"protection":20},unbreakable:{},"minecraft:attribute_modifiers":[{id:"divine_creation_chest_armor",type:"armor",amount:30,operation:"add_value"},{id:"divine_creation_chest_armor_toughness",type:"armor_toughness",amount:20,operation:"add_value"}]}}
    data modify storage mob:init data.equipment.legs set value {"id":"leather_leggings","components":{"minecraft:dyed_color":16777215,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"},"minecraft:enchantments":{"protection":20},unbreakable:{},"minecraft:attribute_modifiers":[{id:"divine_creation_legs_armor",type:"armor",amount:30,operation:"add_value"},{id:"divine_creation_legs_armor_toughness",type:"armor_toughness",amount:20,operation:"add_value"}]}}
    data modify storage mob:init data.equipment.feet set value {"id":"leather_boots","components":{"minecraft:dyed_color":16777215,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"},"minecraft:enchantments":{"protection":20},unbreakable:{},"minecraft:attribute_modifiers":[{id:"divine_creation_feet_armor",type:"armor",amount:30,operation:"add_value"},{id:"divine_creation_feet_armor_toughness",type:"armor_toughness",amount:20,operation:"add_value"}]}}
    data modify storage mob:init data.equipment.mainhand set value {"id":"netherite_sword","components":{"minecraft:enchantment_glint_override":true}}
    data modify storage mob:init data.equipment.offhand set value {"id":"netherite_sword","components":{"minecraft:enchantment_glint_override":true}}

    data modify storage mob:init data.DeathLootTable set value "asset:empty"

    data modify storage mob:init data.Silent set value 1b

    data modify storage mob:init data.PersistenceRequired set value 1b

    #data modify storage mob:init data.NoAI set value 1b

# define attribute
    data modify storage mob:init data.health set value 1024.0
    #data modify storage mob:init data.damage set value 1024.0
    #data modify storage mob:init data.attack_knockback set value 4.0
    data modify storage mob:init data.knockback_resistance set value 1.0
    #data modify storage mob:init data.movement_speed set value 1024.0
    data modify storage mob:init data.movement_efficiency set value 1.0
    data modify storage mob:init data.water_movement_efficiency set value 1.0
    #data modify storage mob:init data.zombie_spawn_reinforcements set value 1.0
    #data modify storage mob:init data.scale set value 16.0
    data modify storage mob:init data.AbsorptionAmount set value 2048.0

# define whether have specific events
    data modify storage mob:init data.have_always_action set value 1b
    data modify storage mob:init data.have_death_event set value 1b
    data modify storage mob:init data.have_hurt_event set value 1b

# define loot
    data modify storage mob:init data.loot.combat_exp set value 4000
    data modify storage mob:init data.loot.gold set value 800

# define boss
    #data modify storage mob:init data.boss set value 1b