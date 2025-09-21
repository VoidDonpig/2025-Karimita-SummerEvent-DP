#> asset:mob/ashwight/
#
# action when have target
#
# @within mob:tick/tick/tick

# discharge
    # begin charge
        execute if entity @s[tag=!asset.ashwight.already_discharged,tag=!asset.ashwight.discharging] run function asset:mob/ashwight/action/discharge/start