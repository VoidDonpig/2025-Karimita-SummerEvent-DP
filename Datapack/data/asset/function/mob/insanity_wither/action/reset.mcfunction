#> asset:mob/insanity_wither/action/reset
#
# reset timers
#
# @context insanity_wither phase

# reset
    scoreboard players reset @s ai_timer.1
    scoreboard players reset @s ai_timer.2
    scoreboard players reset @s ai_timer.3
    scoreboard players reset @s ai_timer.4
    scoreboard players reset @s ai_timer.5
    scoreboard players reset @s ai_timer.6
    scoreboard players reset @s ai_timer.7
    tag @s remove stop_moving
    tag @s remove charging
    tag @s remove mob.invul
    tag @s remove charge.left
    tag @s remove charge.right
    tag @s remove canceled_boom