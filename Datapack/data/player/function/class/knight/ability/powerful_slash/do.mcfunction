#> player:class/knight/ability/powerful_slash/do
#
# process
#
# @within player:trigger/attacked_entity_finder/entity_finder/found

# calculate damage
    execute store result score $damage temporary run attribute @s minecraft:attack_damage get
    scoreboard players set $multiply temporary 50
    scoreboard players set $level_multiply temporary 1
    scoreboard players operation $level_multiply temporary *= @s class.knight.level
    scoreboard players operation $multiply temporary += $level_multiply temporary
    scoreboard players operation $damage temporary *= $multiply temporary
    scoreboard players operation $damage temporary /= $100 constant
    execute store result storage player: powerful_slash.range float 1.0 run attribute @s minecraft:entity_interaction_range get

# slash
    playsound minecraft:item.trident.throw player @a[distance=..16] ~ ~ ~ 1.0 1.2 0.0
    playsound minecraft:item.trident.throw player @a[distance=..16] ~ ~ ~ 1.0 1.2 0.0
    playsound minecraft:item.trident.throw player @a[distance=..16] ~ ~ ~ 1.0 1.2 0.0
    playsound minecraft:item.trident.throw player @a[distance=..16] ~ ~ ~ 1.0 1.2 0.0
    execute unless predicate lib:is_falling positioned ~ ~1 ~ rotated ~-75 0 positioned ^ ^ ^0.76 run function player:class/knight/ability/powerful_slash/slash with storage player: powerful_slash
    execute if predicate lib:is_falling positioned ~ ~ ~ rotated ~ -75 positioned ^ ^ ^0.76 run function player:class/knight/ability/powerful_slash/slash_vertical with storage player: powerful_slash

# damage
    execute as @e[tag=hitted] run function player:class/knight/ability/powerful_slash/damage

# reset
    scoreboard players reset $damage temporary
    scoreboard players reset $multiply temporary
    scoreboard players reset $level_multiply
    data remove storage player: powerful_slash