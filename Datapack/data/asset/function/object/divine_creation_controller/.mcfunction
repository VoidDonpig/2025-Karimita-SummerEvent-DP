#> asset:object/divine_creation_controller/
#
# object function
#
# @within asset:

# agroo
    execute unless data entity @s AngryAt run data modify entity @s AngryAt set from entity @p[predicate=!player:is_player_exception] UUID

# run as giant
    execute if predicate lib:is_having_target on vehicle at @s run function asset:mob/divine_creation/