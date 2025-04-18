#> ui:combiner/combine/recipe/blessing_of_turtle/match

# process
    execute store result score $respiration_level temporary run data get storage ui: target_item.components."minecraft:enchantments"."minecraft:respiration"
    execute store result score #blessing_of_turtle_used temporary run data get storage ui: target_item.components."minecraft:custom_data".combine.blessing_of_turtle_used
    execute unless score #blessing_of_turtle_used temporary matches 1.. if score $respiration_level temporary matches 1.. run function ui:combiner/combine/recipe/blessing_of_turtle/process

# reset
    scoreboard players reset #blessing_of_turtle_used temporary
    scoreboard players reset $respiration_level temporary