#> asset:mob/ashwight/
#
# always function
#
# @within mob:tick/always/tick

# discharge
    # timer
        scoreboard players add @s[tag=asset.ashwight.discharging] ai_timer.1 1
    # charging
        execute if score @s ai_timer.1 matches ..99 if predicate lib:periodic/3 run function asset:mob/ashwight/action/discharge/charging
    # unleash
        execute if score @s ai_timer.1 matches 100 run function asset:mob/ashwight/action/discharge/unleash

# unleashed sfx
    execute if entity @s[tag=asset.ashwight.already_discharged] run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.4 0.4 0.4 0 4 normal