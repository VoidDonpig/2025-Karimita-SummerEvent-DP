#> mob:init/
#
# mob initialization
#
# @within core:main

# init
    execute if entity @s[type=minecraft:blaze,tag=!special_mob] run data modify storage mob:init id set value blaze
    execute if entity @s[type=minecraft:bogged,tag=!special_mob] run data modify storage mob:init id set value bogged
    execute if entity @s[type=minecraft:breeze,tag=!special_mob] run data modify storage mob:init id set value breeze
    execute if entity @s[type=minecraft:cave_spider,tag=!special_mob] run data modify storage mob:init id set value cave_spider
    execute if entity @s[type=minecraft:creeper,tag=!special_mob] run data modify storage mob:init id set value creeper
    execute if entity @s[type=minecraft:drowned,tag=!special_mob] run data modify storage mob:init id set value drowned
    execute if entity @s[type=minecraft:elder_guardian,tag=!special_mob] run data modify storage mob:init id set value elder_guardian
    execute if entity @s[type=minecraft:ender_dragon,tag=!special_mob] run data modify storage mob:init id set value ender_dragon
    execute if entity @s[type=minecraft:enderman,tag=!special_mob] run data modify storage mob:init id set value enderman
    execute if entity @s[type=minecraft:endermite,tag=!special_mob] run data modify storage mob:init id set value endermite
    execute if entity @s[type=minecraft:evoker,tag=!special_mob] run data modify storage mob:init id set value evoker
    execute if entity @s[type=minecraft:ghast,tag=!special_mob] run data modify storage mob:init id set value ghast
    execute if entity @s[type=minecraft:guardian,tag=!special_mob] run data modify storage mob:init id set value guardian
    execute if entity @s[type=minecraft:hoglin,tag=!special_mob] run data modify storage mob:init id set value hoglin
    execute if entity @s[type=minecraft:husk,tag=!special_mob] run data modify storage mob:init id set value husk
    execute if entity @s[type=minecraft:magma_cube,tag=!special_mob] run data modify storage mob:init id set value magma_cube
    execute if entity @s[type=minecraft:phantom,tag=!special_mob] run data modify storage mob:init id set value phantom
    execute if entity @s[type=minecraft:piglin_brute,tag=!special_mob] run data modify storage mob:init id set value piglin_brute
    execute if entity @s[type=minecraft:piglin,tag=!special_mob] run data modify storage mob:init id set value piglin
    execute if entity @s[type=minecraft:pillager,tag=!special_mob] run data modify storage mob:init id set value pillager
    execute if entity @s[type=minecraft:ravager,tag=!special_mob] run data modify storage mob:init id set value ravager
    execute if entity @s[type=minecraft:shulker,tag=!special_mob] run data modify storage mob:init id set value shulker
    execute if entity @s[type=minecraft:silverfish,tag=!special_mob] run data modify storage mob:init id set value silverfish
    execute if entity @s[type=minecraft:skeleton,tag=!special_mob] run data modify storage mob:init id set value skeleton
    execute if entity @s[type=minecraft:slime,tag=!special_mob] run data modify storage mob:init id set value slime
    execute if entity @s[type=minecraft:spider,tag=!special_mob] run data modify storage mob:init id set value spider
    execute if entity @s[type=minecraft:stray,tag=!special_mob] run data modify storage mob:init id set value stray
    execute if entity @s[type=minecraft:vex,tag=!special_mob] run data modify storage mob:init id set value vex
    execute if entity @s[type=minecraft:vindicator,tag=!special_mob] run data modify storage mob:init id set value vindicator
    execute if entity @s[type=minecraft:warden,tag=!special_mob] run data modify storage mob:init id set value warden
    execute if entity @s[type=minecraft:witch,tag=!special_mob] run data modify storage mob:init id set value witch
    execute if entity @s[type=minecraft:wither_skeleton,tag=!special_mob] run data modify storage mob:init id set value wither_skeleton
    execute if entity @s[type=minecraft:wither,tag=!special_mob] run data modify storage mob:init id set value wither
    execute if entity @s[type=minecraft:zoglin,tag=!special_mob] run data modify storage mob:init id set value zoglin
    execute if entity @s[type=minecraft:zombie_villager,tag=!special_mob] run data modify storage mob:init id set value zombie_villager
    execute if entity @s[type=minecraft:zombie,tag=!special_mob] run data modify storage mob:init id set value zombie
    execute if entity @s[type=minecraft:zombified_piglin,tag=!special_mob] run data modify storage mob:init id set value zombified_piglin

    execute if entity @s[type=minecraft:iron_golem,tag=special_mob,tag=super_golem] run data modify storage mob:init id set value super_golem

    execute if entity @s[type=minecraft:ender_dragon,tag=special_mob,tag=the_ancestral_dragon] run data modify storage mob:init id set value the_ancestral_dragon
    
    execute if entity @s[type=minecraft:ender_dragon,tag=special_mob,tag=enderling_dragon] run data modify storage mob:init id set value enderling_dragon
    execute if entity @s[type=minecraft:wither,tag=special_mob,tag=wither_emperor] run data modify storage mob:init id set value wither_emperor
    execute if entity @s[type=minecraft:wither,tag=special_mob,tag=wither_underling] run data modify storage mob:init id set value wither_underling
    execute if entity @s[type=minecraft:wither_skeleton,tag=special_mob,tag=wither_combatant] run data modify storage mob:init id set value wither_combatant
    #execute if entity @s[type=minecraft:vex,tag=special_mob,tag=blowing_spirit] run data modify storage mob:init id set value blowing_spirit
    execute if entity @s[type=minecraft:zombie,tag=special_mob,tag=dragon_knight] run data modify storage mob:init id set value dragon_knight
    execute if entity @s[type=minecraft:zombie_villager,tag=special_mob,tag=revenant_priest] run data modify storage mob:init id set value revenant_priest
    #execute if entity @s[type=minecraft:giant,tag=special_mob,tag=revival_giant] run data modify storage mob:init id set value revival_giant
    execute if entity @s[type=minecraft:giant,tag=special_mob,tag=divine_creation] run data modify storage mob:init id set value divine_creation
    #execute if entity @s[type=minecraft:wither,tag=special_mob,tag=demiurge] run data modify storage mob:init id set value demiurge
    #execute if entity @s[type=minecraft:wither_skeleton,tag=special_mob,tag=thanatos] run data modify storage mob:init id set value thanatos
    #execute if entity @s[type=minecraft:zombie,tag=special_mob,tag=diamond_zombie] run data modify storage mob:init id set value diamond_zombie
    #execute if entity @s[type=minecraft:zombie,tag=special_mob,tag=bloodthirster] run data modify storage mob:init id set value bloodthirster

# common process
    function mob:init/to with storage mob:init
    function mob:init/set_data
    function mob:init/common

# finish
    tag @s add already_init

# reset
    data remove storage mob:init id
    data remove storage mob:init data