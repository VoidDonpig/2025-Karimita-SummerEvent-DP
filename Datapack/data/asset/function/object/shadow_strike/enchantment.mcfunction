#> asset:object/shadow_strike/enchantment
#
# increase damage including enchantments
#
# @within asset:object/shadow_strike/get_melee

# enchantment
    # sharpness
        # get level
            execute store result score $sharpness_level temporary run data get entity @s SelectedItem.components.minecraft:enchantments."minecraft:sharpness"
        # base
            execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{mainhand:{predicates:{"minecraft:enchantments":[{enchantments:"minecraft:sharpness"}]}}}}} run scoreboard players set $sharpness_damage temporary 10
        # per level
            execute if score $sharpness_level temporary matches 1.. run scoreboard players remove $sharpness_level temporary 1
            scoreboard players operation $sharpness_level temporary *= $5 constant
        # set ench damage
            scoreboard players operation $sharpness_damage temporary += $sharpness_level temporary
        # add damage
            scoreboard players operation $enchantments_damage temporary += $sharpness_damage temporary
        # reset
            scoreboard players reset $sharpness_damage temporary
            scoreboard players reset $sharpness_level temporary
    # smite
        # get level
            execute store result score $smite_level temporary run data get entity @s SelectedItem.components.minecraft:enchantments."minecraft:smite"
        # base
            execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{mainhand:{predicates:{"minecraft:enchantments":[{enchantments:"minecraft:smite"}]}}}}} run scoreboard players set $smite_damage temporary 25
        # per level
            execute if score $smite_level temporary matches 1.. run scoreboard players remove $smite_level temporary 1
            scoreboard players operation $smite_level temporary *= $25 constant
        # set ench damage
            scoreboard players operation $smite_damage temporary += $smite_level temporary
        # add damage
            execute if entity @n[tag=this,type=#sensitive_to_smite] run scoreboard players operation $enchantments_damage temporary += $smite_damage temporary
        # reset
            scoreboard players reset $smite_damage temporary
            scoreboard players reset $smite_level temporary
    # bane of arthropods
        # get level
            execute store result score $bane_of_arthropods_level temporary run data get entity @s SelectedItem.components.minecraft:enchantments."minecraft:bane_of_arthropods"
        # base
            execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{mainhand:{predicates:{"minecraft:enchantments":[{enchantments:"minecraft:bane_of_arthropods"}]}}}}} run scoreboard players set $bane_of_arthropods_damage temporary 25
        # per level
            execute if score $bane_of_arthropods_level temporary matches 1.. run scoreboard players remove $bane_of_arthropods_level temporary 1
            scoreboard players operation $bane_of_arthropods_level temporary *= $25 constant
        # set ench damage
            scoreboard players operation $bane_of_arthropods_damage temporary += $bane_of_arthropods_level temporary
        # add damage
            execute if entity @n[tag=this,type=#sensitive_to_bane_of_arthropods] run scoreboard players operation $enchantments_damage temporary += $bane_of_arthropods_damage temporary
        # reset
            scoreboard players reset $bane_of_arthropods_damage temporary
            scoreboard players reset $bane_of_arthropods_level temporary
    # ender slayer
        # get level
            execute store result score $ender_slayer_level temporary run data get entity @s SelectedItem.components.minecraft:enchantments."asset:ender_slayer"
        # base
            execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{mainhand:{predicates:{"minecraft:enchantments":[{enchantments:"asset:ender_slayer"}]}}}}} run scoreboard players set $ender_slayer_damage temporary 25
        # per level
            execute if score $ender_slayer_level temporary matches 1.. run scoreboard players remove $ender_slayer_level temporary 1
            scoreboard players operation $ender_slayer_level temporary *= $25 constant
        # set ench damage
            scoreboard players operation $ender_slayer_damage temporary += $ender_slayer_level temporary
        # add damage
            execute if entity @n[tag=this,type=#asset:sensitive_to_ender_slayer] run scoreboard players operation $enchantments_damage temporary += $ender_slayer_damage temporary
        # reset
            scoreboard players reset $ender_slayer_damage temporary
            scoreboard players reset $ender_slayer_level temporary
    # illager executor
        # get level
            execute store result score $illager_executor_level temporary run data get entity @s SelectedItem.components.minecraft:enchantments."asset:illager_executor"
        # base
            execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{mainhand:{predicates:{"minecraft:enchantments":[{enchantments:"asset:illager_executor"}]}}}}} run scoreboard players set $illager_executor_damage temporary 25
        # per level
            execute if score $illager_executor_level temporary matches 1.. run scoreboard players remove $illager_executor_level temporary 1
            scoreboard players operation $illager_executor_level temporary *= $25 constant
        # set ench damage
            scoreboard players operation $illager_executor_damage temporary += $illager_executor_level temporary
        # add damage
            execute if entity @n[tag=this,type=#asset:sensitive_to_illager_executor] run scoreboard players operation $enchantments_damage temporary += $illager_executor_damage temporary
        # reset
            scoreboard players reset $illager_executor_damage temporary
            scoreboard players reset $illager_executor_level temporary
    # skeleton crasher
        # get level
            execute store result score $skeleton_crasher_level temporary run data get entity @s SelectedItem.components.minecraft:enchantments."asset:skeleton_crasher"
        # base
            execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{mainhand:{predicates:{"minecraft:enchantments":[{enchantments:"asset:skeleton_crasher"}]}}}}} run scoreboard players set $skeleton_crasher_damage temporary 25
        # per level
            execute if score $skeleton_crasher_level temporary matches 1.. run scoreboard players remove $skeleton_crasher_level temporary 1
            scoreboard players operation $skeleton_crasher_level temporary *= $25 constant
        # set ench damage
            scoreboard players operation $skeleton_crasher_damage temporary += $skeleton_crasher_level temporary
        # add damage
            execute if entity @n[tag=this,type=#asset:sensitive_to_skeleton_crasher] run scoreboard players operation $enchantments_damage temporary += $skeleton_crasher_damage temporary
        # reset
            scoreboard players reset $skeleton_crasher_damage temporary
            scoreboard players reset $skeleton_crasher_level temporary
    # wither eliminator
        # get level
            execute store result score $wither_eliminator_level temporary run data get entity @s SelectedItem.components.minecraft:enchantments."asset:wither_eliminator"
        # base
            execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{mainhand:{predicates:{"minecraft:enchantments":[{enchantments:"asset:wither_eliminator"}]}}}}} run scoreboard players set $wither_eliminator_damage temporary 25
        # per level
            execute if score $wither_eliminator_level temporary matches 1.. run scoreboard players remove $wither_eliminator_level temporary 1
            scoreboard players operation $wither_eliminator_level temporary *= $25 constant
        # set ench damage
            scoreboard players operation $wither_eliminator_damage temporary += $wither_eliminator_level temporary
        # add damage
            execute if entity @n[tag=this,type=#asset:sensitive_to_wither_eliminator] run scoreboard players operation $enchantments_damage temporary += $wither_eliminator_damage temporary
        # reset
            scoreboard players reset $wither_eliminator_damage temporary
            scoreboard players reset $wither_eliminator_level temporary
    # zombie purifier
        # get level
            execute store result score $zombie_purifier_level temporary run data get entity @s SelectedItem.components.minecraft:enchantments."asset:zombie_purifier"
        # base
            execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{mainhand:{predicates:{"minecraft:enchantments":[{enchantments:"asset:zombie_purifier"}]}}}}} run scoreboard players set $zombie_purifier_damage temporary 25
        # per level
            execute if score $zombie_purifier_level temporary matches 1.. run scoreboard players remove $zombie_purifier_level temporary 1
            scoreboard players operation $zombie_purifier_level temporary *= $25 constant
        # set ench damage
            scoreboard players operation $zombie_purifier_damage temporary += $zombie_purifier_level temporary
        # add damage
            execute if entity @n[tag=this,type=#asset:sensitive_to_zombie_purifier] run scoreboard players operation $enchantments_damage temporary += $zombie_purifier_damage temporary
        # reset
            scoreboard players reset $zombie_purifier_damage temporary
            scoreboard players reset $zombie_purifier_level temporary

# add damage
    scoreboard players operation $enchantments_damage temporary /= $10 constant
    scoreboard players operation $shadow_strike_damage temporary += $enchantments_damage temporary

# boss destroyer
    scoreboard players operation $boss_destroyer_damage temporary = $shadow_strike_damage temporary
    execute store result score $boss_destroyer_level temporary run data get entity @s SelectedItem.components.minecraft:enchantments."asset:boss_destroyer"
    scoreboard players operation $boss_destroyer_level temporary *= $5 constant
    scoreboard players operation $boss_destroyer_damage temporary *= $boss_destroyer_level temporary
    scoreboard players operation $boss_destroyer_damage temporary /= $100 constant
    execute if entity @n[tag=this,nbt={data:{mob:{boss:1b}}}] run scoreboard players operation $shadow_strike_damage temporary += $boss_destroyer_damage temporary
    # reset
        scoreboard players reset $boss_destroyer_damage temporary
        scoreboard players reset $boss_destroyer_level temporary

# reset
    scoreboard players reset $enchantments_damage temporary