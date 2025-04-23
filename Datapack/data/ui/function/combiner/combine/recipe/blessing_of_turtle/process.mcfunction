#> ui:combiner/combine/recipe/blessing_of_turtle/process

# set respiration
    scoreboard players add $respiration_level temporary 1
    execute store result storage ui: target_item.components."minecraft:enchantments"."minecraft:respiration" int 1 run scoreboard players get $respiration_level temporary
    data modify storage ui: target_item.components."minecraft:custom_data".combine.blessing_of_turtle_used set value 1
    execute in world:admin_area run data modify block 0 0 0 Items[0] set from storage ui: target_item
    execute as @p[tag=using_ui] at @s in world:admin_area run loot give @s mine 0 0 0 minecraft:debug_stick

# clear
    data remove storage ui: new_items[{Slot:10b}]
    data remove storage ui: new_items[{Slot:16b}]

# sfx
    execute as @p[tag=using_ui] at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1.0 1.0 0.0
    execute as @p[tag=using_ui] run tellraw @s [{"text": "亀の恵み との合成が成功した！","color": "yellow"}]

# reset
    tag @s remove fail