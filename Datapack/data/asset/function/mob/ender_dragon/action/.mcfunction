#> asset:mob/ender_dragon/action/
#
# ender dragon tick
#
# @within asset:mob/ender_dragon/always

# phase
    execute if score @s mob.health matches 3376.. run function asset:mob/ender_dragon/action/phase01
    execute if score @s mob.health matches 2251..3375 run function asset:mob/ender_dragon/action/phase02
    execute if score @s mob.health matches 1126..2250 run function asset:mob/ender_dragon/action/phase03
    execute if score @s mob.health matches ..1125 run function asset:mob/ender_dragon/action/phase04