#> ui:combiner/combine/recipe/miner_soul/process

# set protection
    scoreboard players add $efficiency_level temporary 1
    execute store result storage ui: target_item.components."minecraft:enchantments"."minecraft:efficiency" int 1 run scoreboard players get $efficiency_level temporary
    scoreboard players add $miner_soul_used temporary 1
    execute store result storage ui: target_item.components."minecraft:custom_data".combine.miner_soul_used int 1 run scoreboard players get $miner_soul_used temporary
    execute in world:admin_area run data modify block 0 0 0 Items[0] set from storage ui: target_item
    execute as @p[tag=using_ui] at @s in world:admin_area run loot give @s mine 0 0 0 minecraft:debug_stick

# clear
    data remove storage ui: new_items[{Slot:10b}]
    data remove storage ui: new_items[{Slot:16b}]

# sfx
    execute as @p[tag=using_ui] at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1.0 1.0 0.0
    execute as @p[tag=using_ui] run tellraw @s [{"text": "採掘者の魂 との合成が成功した！","color": "yellow"}]

# reset
    tag @s remove fail