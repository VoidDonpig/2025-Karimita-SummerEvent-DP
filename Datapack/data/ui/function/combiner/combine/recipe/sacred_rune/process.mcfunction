#> ui:combiner/combine/recipe/sacred_rune/process

# set protection
    scoreboard players add $smite_level temporary 1
    execute store result storage ui: target_item.components."minecraft:enchantments"."minecraft:smite" int 1 run scoreboard players get $smite_level temporary
    scoreboard players add $sacred_rune_used temporary 1
    execute store result storage ui: target_item.components."minecraft:custom_data".combine.sacred_rune_used int 1 run scoreboard players get $sacred_rune_used temporary
    execute in world:admin_area run data modify block 0 0 0 Items[0] set from storage ui: target_item
    execute as @p[tag=using_ui] at @s in world:admin_area run loot give @s mine 0 0 0 minecraft:debug_stick

# clear
    data remove storage ui: new_items[{Slot:10b}]
    data remove storage ui: new_items[{Slot:16b}]

# sfx
    execute as @p[tag=using_ui] at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1.0 1.0 0.0
    execute as @p[tag=using_ui] run tellraw @s [{"text": "聖なるルーン との合成が成功した！","color": "yellow"}]

# reset
    tag @s remove fail