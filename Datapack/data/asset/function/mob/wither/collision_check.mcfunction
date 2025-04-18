#> asset:mob/wither/collision_check
#
# check collision
#
# @within asset:mob/wither/action/

# check
    execute unless block ^ ^ ^1 #lib:not_solid run return 1
    execute anchored eyes unless block ^ ^ ^1 #lib:not_solid run return 1