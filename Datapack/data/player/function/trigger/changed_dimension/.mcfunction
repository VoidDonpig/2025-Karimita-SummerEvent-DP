#> player:trigger/changed_dimension/
#
# changed dimension
#
# @handles advancement player:trigger/changed_dimension

# revoke
    advancement revoke @s only player:trigger/changed_dimension

# update dungeon item
    execute if predicate world:is_in_dungeon run function asset:item/dungeon_compass/
    execute unless predicate world:is_in_dungeon run function asset:item/dungeon_compass/deactivate/
    execute if predicate world:is_in_dungeon run function asset:item/dungeon_torch/
    execute unless predicate world:is_in_dungeon run function asset:item/dungeon_torch/deactivate/

# statusupdate
    tag @s add statusupdate