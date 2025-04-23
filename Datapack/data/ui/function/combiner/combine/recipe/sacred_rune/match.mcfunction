#> ui:combiner/combine/recipe/sacred_rune/match

# process
    execute store result score $smite_level temporary run data get storage ui: target_item.components."minecraft:enchantments"."minecraft:smite"
    execute store result score $sacred_rune_used temporary run data get storage ui: target_item.components."minecraft:custom_data".combine.sacred_rune_used
    execute unless score $sacred_rune_used temporary matches 5.. if score $smite_level temporary matches 1.. run function ui:combiner/combine/recipe/sacred_rune/process

# reset
    scoreboard players reset $sacred_rune_used temporary
    scoreboard players reset $smite_level temporary