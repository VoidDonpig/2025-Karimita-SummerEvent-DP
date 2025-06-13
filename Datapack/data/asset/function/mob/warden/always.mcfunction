#> asset:mob/warden/always
#
# tick
#
# @within mob:tick/always/tick

# phase
    execute if score @s mob.health matches 40001.. run function asset:mob/warden/action/phase01
    execute if score @s mob.health matches ..40000 run function asset:mob/warden/action/phase02