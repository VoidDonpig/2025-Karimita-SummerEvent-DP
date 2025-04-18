#> ui:combiner/combine/recipe/mixtura/match

# process
    execute store result score $protection_level temporary run data get storage ui: target_item.components."minecraft:enchantments"."minecraft:protection"
    execute store result score $mixtura_used temporary run data get storage ui: target_item.components."minecraft:custom_data".combine.mixtura_used
    execute unless score $mixtura_used temporary matches 1.. if score $protection_level temporary matches 1.. run function ui:combiner/combine/recipe/mixtura/process

# reset
    scoreboard players reset $mixtura_used temporary
    scoreboard players reset $protection_level temporary