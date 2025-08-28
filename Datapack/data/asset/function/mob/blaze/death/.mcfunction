#> asset:mob/blaze/death/
#
# death event
#
# @within mob:death/run

# timer
    scoreboard players add @s death_timer.1 1

# residual flare
    execute if score @s death_timer.1 matches 1 if score $difficulty_level world matches 3.. run function asset:mob/blaze/action/scorched_skull/