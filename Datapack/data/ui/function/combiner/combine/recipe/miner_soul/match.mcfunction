#> ui:combiner/combine/recipe/miner_soul/match

# process
    execute store result score $efficiency_level temporary run data get storage ui: target_item.components."minecraft:enchantments"."minecraft:efficiency"
    execute store result score $miner_soul_used temporary run data get storage ui: target_item.components."minecraft:custom_data".combine.miner_soul_used
    execute unless score $miner_soul_used temporary matches 5.. if score $efficiency_level temporary matches 1.. run function ui:combiner/combine/recipe/miner_soul/process

# reset
    scoreboard players reset $miner_soul_used temporary
    scoreboard players reset $efficiency_level temporary