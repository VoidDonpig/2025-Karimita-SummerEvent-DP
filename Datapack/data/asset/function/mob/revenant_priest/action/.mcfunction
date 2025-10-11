#> asset:mob/revenant_priest/action/
#
# action
#
# @within asset:mob/revenant_priest/always

# add tag
    tag @p[predicate=!player:is_player_exception,distance=..128] add target
    rotate @s facing entity @p[tag=target]

# phase
    execute if score @s mob.health matches 19651.. run function asset:mob/revenant_priest/action/phase01
    execute if score @s mob.health matches 13101..19650 run function asset:mob/revenant_priest/action/phase02
    execute if score @s mob.health matches 6551..13100 run function asset:mob/revenant_priest/action/phase03
    execute if score @s mob.health matches ..6550 run function asset:mob/revenant_priest/action/phase04

# reset
    tag @p[tag=target] remove target