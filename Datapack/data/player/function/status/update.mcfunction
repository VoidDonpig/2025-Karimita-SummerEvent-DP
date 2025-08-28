#> player:status/update
#
# update status
#
# @within player:tick

# set base status
    scoreboard players set @s max_health 200
    scoreboard players set @s max_mana 100
    scoreboard players set @s armor 0
    scoreboard players set @s armor_toughness 0
    scoreboard players set @s movement_speed 100
    scoreboard players set @s attack_damage 10
    scoreboard players set @s attack_range 300
    scoreboard players set @s luck 0
    scoreboard players set @s knockback_resistance 0
    scoreboard players set @s attack_speed 100
    scoreboard players set @s ferocity 0
    scoreboard players set @s arrow_damage_increase 0
    scoreboard players set @s safe_fall_distance 300

# bonus status
    execute if data entity @s SelectedItem{components:{"minecraft:custom_data":{slot:"mainhand"}}} run data modify storage player: bonus_status append from entity @s SelectedItem.components.minecraft:custom_data.status[]
    data modify storage player: bonus_status append from entity @s equipment.offhand{components:{"minecraft:custom_data":{slot:"offhand"}}}.components.minecraft:custom_data.status[]
    data modify storage player: bonus_status append from entity @s equipment.head{components:{"minecraft:custom_data":{slot:"head"}}}.components.minecraft:custom_data.status[]
    data modify storage player: bonus_status append from entity @s equipment.chest{components:{"minecraft:custom_data":{slot:"chest"}}}.components.minecraft:custom_data.status[]
    data modify storage player: bonus_status append from entity @s equipment.legs{components:{"minecraft:custom_data":{slot:"legs"}}}.components.minecraft:custom_data.status[]
    data modify storage player: bonus_status append from entity @s equipment.feet{components:{"minecraft:custom_data":{slot:"feet"}}}.components.minecraft:custom_data.status[]

    execute if data storage player: bonus_status[] run function player:status/bonus with storage player: bonus_status[0]

    scoreboard players operation @s max_mana += $bonus_max_mana temporary
    scoreboard players operation @s attack_speed += $bonus_attack_speed temporary
    scoreboard players operation @s ferocity += $bonus_ferocity temporary
    scoreboard players operation @s arrow_damage_increase += $bonus_arrow_damage_increase temporary
    # reset
        scoreboard players reset $bonus_max_mana temporary
        scoreboard players reset $bonus_attack_speed temporary
        scoreboard players reset $bonus_ferocity temporary
        scoreboard players reset $bonus_arrow_damage_increase temporary

# enchantment
    # wisdom
        # calc
            execute store result score $wisdom_head temporary run data get entity @s equipment.head.components."minecraft:enchantments"."asset:wisdom"
            execute store result score $wisdom_chest temporary run data get entity @s equipment.chest.components."minecraft:enchantments"."asset:wisdom"
            execute store result score $wisdom_legs temporary run data get entity @s equipment.legs.components."minecraft:enchantments"."asset:wisdom"
            execute store result score $wisdom_feet temporary run data get entity @s equipment.feet.components."minecraft:enchantments"."asset:wisdom"

            scoreboard players operation $wisdom_head temporary *= $20 constant
            scoreboard players operation $wisdom_chest temporary *= $20 constant
            scoreboard players operation $wisdom_legs temporary *= $20 constant
            scoreboard players operation $wisdom_feet temporary *= $20 constant

            scoreboard players operation @s max_mana += $wisdom_head temporary
            scoreboard players operation @s max_mana += $wisdom_chest temporary
            scoreboard players operation @s max_mana += $wisdom_legs temporary
            scoreboard players operation @s max_mana += $wisdom_feet temporary
        # reset
            scoreboard players reset $wisdom_head temporary
            scoreboard players reset $wisdom_chest temporary
            scoreboard players reset $wisdom_legs temporary
            scoreboard players reset $wisdom_feet temporary


# active passive
    execute if predicate player:team/class.knight run function player:class/knight/passive
    execute if predicate player:team/class.archer run function player:class/archer/passive
    execute if predicate player:team/class.assassin run function player:class/assassin/passive
    execute if predicate player:team/class.wizard run function player:class/wizard/passive
    execute if predicate player:team/class.healer run function player:class/healer/passive

# bloodlust
    execute if predicate player:team/class.assassin run scoreboard players operation @s attack_damage += @s bloodlust_attack_damage

# apply attributes
    function player:status/max_health/update/
    function player:status/armor/update/
    function player:status/armor_toughness/update/
    function player:status/movement_speed/update/
    function player:status/attack_damage/update/
    function player:status/attack_range/update/
    function player:status/luck/update/
    function player:status/knockback_resistance/update/
    function player:status/safe_fall_distance/update/

# remove overflow mana
    scoreboard players operation @s mana < @s max_mana

# remove flag tag
    tag @s remove statusupdate