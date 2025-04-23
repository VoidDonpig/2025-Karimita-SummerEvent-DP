#> ui:combiner/combine/recipe/ultra_cotem/match

# process
    execute store result score $sharpness_level temporary run data get storage ui: target_item.components."minecraft:enchantments"."minecraft:sharpness"
    execute store result score $ultra_cotem_used temporary run data get storage ui: target_item.components."minecraft:custom_data".combine.ultra_cotem_used
    execute unless score $ultra_cotem_used temporary matches 5.. if score $sharpness_level temporary matches 1.. run function ui:combiner/combine/recipe/ultra_cotem/process

# reset
    scoreboard players reset $ultra_cotem_used temporary
    scoreboard players reset $sharpness_level temporary