#> asset:mob/insanity_wither/action/charge/roll
#
# roll
#
# @within asset:mob/insanity_wither/action/

# random
    execute store result score $random temporary run random value 0..1

# add tag
    tag @s add charging
    execute if score $random temporary matches 0 run tag @s add charge.left
    execute if score $random temporary matches 1 run tag @s add charge.right

# reset
    scoreboard players reset $random temporary