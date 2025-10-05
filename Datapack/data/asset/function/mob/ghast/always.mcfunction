#> asset:mob/ghast/always
#
# ghast always tick
#
# @within mob:tick/always/tick

# hellfied rain
    # check
        execute if score $difficulty_level world matches 5.. if predicate lib:periodic/2 run function asset:mob/ghast/action/hellfied_rain/check