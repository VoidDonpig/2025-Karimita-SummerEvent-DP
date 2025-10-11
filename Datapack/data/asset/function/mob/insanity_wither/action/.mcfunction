#> asset:mob/insanity_wither/action/
#
# action main
#
# @within asset:mob/insanity_wither/action/

# add tag
    execute on target run tag @s add target

# remove skull
    kill @e[type=minecraft:wither_skull,tag=!rapid_insanity_wither_skull_shot,tag=!nuclear_frenzy_insanity_wither_skull,distance=..5]

# phase
    function asset:mob/insanity_wither/action/phase01

# detect wall
    execute on vehicle at @s if function asset:mob/insanity_wither/collision_check run rotate @s ~ 0

# escape
    execute on vehicle at @s unless predicate lib:not_collision run tp @s ~ ~0.1 ~

# reset
    tag @n[tag=target] remove target