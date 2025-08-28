#> asset:mob/wither_underling/always
#
# alwaays action
#
# @within mob:tick/always/tick

# kill
    execute unless entity @e[type=wither,tag=!special_mob] run function lib:vanish/