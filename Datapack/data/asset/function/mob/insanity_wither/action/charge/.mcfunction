#> asset:mob/insanity_wither/action/charge/
#
# move
#
# @within asset:mob/insanity_wither/action/

# set rotation
    execute if score @s[tag=charge.left] ai_timer.1 matches 1 on vehicle run rotate @s ~-75 ~
    execute if score @s[tag=charge.right] ai_timer.1 matches 1 on vehicle run rotate @s ~75 ~
    execute facing entity @n[tag=target] feet run rotate @s ~ ~

# move to player
    execute if score @s ai_timer.1 matches ..15 run function asset:mob/insanity_wither/action/charge/move

# move
    execute if score @s ai_timer.1 matches 15..20 on vehicle at @s run tp @s ^ ^ ^0.5
    execute if score @s ai_timer.1 matches 20..25 on vehicle at @s run tp @s ^ ^ ^0.3

# reset
    execute if score @s ai_timer.1 matches 25.. run function asset:mob/insanity_wither/action/charge/reset