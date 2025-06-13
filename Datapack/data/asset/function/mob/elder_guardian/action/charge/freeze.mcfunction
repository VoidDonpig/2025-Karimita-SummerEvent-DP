#> asset:mob/elder_guardian/action/charge/freeze
#
# freeze
#
# @within asset:mob/elder_guardian/action/charge/

# set data
    data modify entity @s NoAI set value 1b
    data modify entity @s NoGravity set value 1b

# playsound
    playsound minecraft:block.trial_spawner.about_to_spawn_item hostile @a ~ ~ ~ 2 2 0