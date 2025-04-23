#> asset:mob/wither/
#
# wither tick
#
# @within asset:

# spawn
    execute unless entity @s[tag=already_spawned] run function asset:mob/wither/spawn/

# act
    execute if predicate lib:is_having_target if entity @s[tag=already_spawned] run function asset:mob/wither/action/