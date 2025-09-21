#> asset:mob/enderling_dragon/always
#
# alwaays action
#
# @within mob:tick/always/tick

# kill
    execute unless entity @e[type=ender_dragon,tag=!special_mob] run function lib:vanish/

# shooting lay
    execute if predicate lib:periodic/10 positioned ^ ^ ^-5 facing entity @p[distance=..128,predicate=!player:is_player_exception] eyes run function asset:mob/enderling_dragon/action/shooting_lay