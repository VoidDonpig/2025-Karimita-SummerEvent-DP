#> player:class/knight/ability/powerful_slash/do
#
# process
#
# @within function player:class/knight/ability/powerful_slash/

# calculate damage
    execute store result score $damage temporary run attribute @s minecraft:attack_damage get
    execute if predicate lib:is_falling run scoreboard players operation $damage temporary *= $3 constant
    execute if predicate lib:is_falling run scoreboard players operation $damage temporary /= $2 constant
    scoreboard players set $multiply temporary 50
    scoreboard players set $level_multiply temporary 1
    scoreboard players operation $level_multiply temporary *= @s class.knight.level
    scoreboard players operation $multiply temporary += $level_multiply temporary
    scoreboard players operation $damage temporary *= $multiply temporary
    scoreboard players operation $damage temporary /= $100 constant
    execute store result storage player: powerful_slash.damage float 1.0 run scoreboard players get $damage temporary
    execute store result storage player: powerful_slash.range float 1.0 run attribute @s minecraft:entity_interaction_range get

# damage
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.0 1.2 0.0
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.0 1.2 0.0
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.0 1.2 0.0
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.0 1.2 0.0
    execute unless predicate lib:is_falling positioned ~ ~1 ~ rotated ~-75 0 positioned ^ ^ ^0.76 run function player:class/knight/ability/powerful_slash/damage with storage player: powerful_slash
    execute if predicate lib:is_falling positioned ~ ~ ~ rotated ~ -75 positioned ^ ^ ^0.76 run function player:class/knight/ability/powerful_slash/damage_vertical with storage player: powerful_slash

# hit
    tag @s add this
    execute as @e[tag=hitted] at @s run function player:class/knight/ability/powerful_slash/apply with storage player: powerful_slash

# reset
    tag @e remove hitted
    tag @s remove this
    scoreboard players reset $damage temporary
    scoreboard players reset $multiply temporary
    scoreboard players reset $level_multiply
    data remove storage player: powerful_slash