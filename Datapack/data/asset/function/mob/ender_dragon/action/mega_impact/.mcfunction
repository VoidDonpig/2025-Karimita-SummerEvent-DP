#> asset:mob/ender_dragon/action/mega_impact/
#
# mega impact
#
# @within asset:mob/ender_dragon/action/phase03

# get health
    execute store result storage asset: __temp__.damage float 0.5 run data get entity @s Health

# add damage
    function asset:mob/ender_dragon/action/mega_impact/damage with storage asset: __temp__

# reset
    data remove storage asset: __temp__