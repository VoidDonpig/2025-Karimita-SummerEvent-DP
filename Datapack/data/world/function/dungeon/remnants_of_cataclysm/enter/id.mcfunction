#> world:dungeon/remnants_of_cataclysm/enter/id
#
# set id
#
# @within world:dungeon/remnants_of_cataclysm/enter/check

# set id
    execute store result score $dungeon_id temporary run data get storage world: dungeon.remnants_of_cataclysm.id
    execute store result storage world: dungeon.remnants_of_cataclysm.id int 1 run scoreboard players add $dungeon_id temporary 1

# reset
    scoreboard players reset $dungeon_id temporary