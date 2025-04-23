#> asset:mob/wither_skeleton/always
#
# always action
#
# @within mob:tick/always/tick

# leaping attack
    # fix rotation
        execute if entity @s[tag=leap_attack.doing] run function asset:mob/wither_skeleton/action/leap_attack/fix_facing_direction
    # add tag when leaping
        execute if entity @s[tag=leap_attack.doing,predicate=!lib:is_on_ground] run tag @s add leap_attack.abletoend
    # detect if should finish
        execute if entity @s[tag=leap_attack.abletoend,predicate=lib:is_on_ground] run function asset:mob/wither_skeleton/action/leap_attack/finish

# back step
    # fix rotation
        execute if entity @s[tag=back_step.doing] run function asset:mob/wither_skeleton/action/back_step/fix_facing_direction
    # add tag when leaping
        execute if entity @s[tag=back_step.doing,predicate=!lib:is_on_ground] run tag @s add back_step.abletoend
    # detect if should finish
        execute if entity @s[tag=back_step.abletoend,predicate=lib:is_on_ground] run function asset:mob/wither_skeleton/action/back_step/finish