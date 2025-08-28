#> asset:mob/wither/action/
#
# action main
#
# @within asset:mob/wither/action/

# add tag
    execute on target run tag @s add target

# remove skull
    kill @e[type=minecraft:wither_skull,tag=!rapid_wither_skull_shot,tag=!nuclear_frenzy_wither_skull,distance=..5]

# phase
    execute if score @s mob.health matches 10126.. run function asset:mob/wither/action/phase01
    execute if score @s mob.health matches 6751..10125 run function asset:mob/wither/action/phase02
    execute if score @s mob.health matches 3376..6750 run function asset:mob/wither/action/phase03
    execute if score @s mob.health matches ..3375 run function asset:mob/wither/action/phase04

# detect wall
    execute on vehicle at @s if function asset:mob/wither/collision_check run rotate @s ~ 0

# escape
    execute on vehicle at @s unless predicate lib:not_collision run tp @s ~ ~0.1 ~

# reset
    tag @n[tag=target] remove target