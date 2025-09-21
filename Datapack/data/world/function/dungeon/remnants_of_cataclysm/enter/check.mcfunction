#> world:dungeon/remnants_of_cataclysm/enter/check
#
# check dungeon
#
# @within none

# enter dungeon player is there
    execute if entity @a[predicate=world:dungeon/is_in_remnants_of_cataclysm] in world:remnants_of_cataclysm run function world:dungeon/remnants_of_cataclysm/enter/ with storage world: dungeon.remnants_of_cataclysm

# generate dungeon when none exists
    execute unless entity @a[predicate=world:dungeon/is_in_remnants_of_cataclysm] in world:remnants_of_cataclysm run function world:dungeon/remnants_of_cataclysm/enter/id
    execute unless entity @a[predicate=world:dungeon/is_in_remnants_of_cataclysm] in world:remnants_of_cataclysm run function world:dungeon/remnants_of_cataclysm/enter/generate with storage world: dungeon.remnants_of_cataclysm
    execute unless entity @a[predicate=world:dungeon/is_in_remnants_of_cataclysm] in world:remnants_of_cataclysm run function world:dungeon/remnants_of_cataclysm/enter/ with storage world: dungeon.remnants_of_cataclysm