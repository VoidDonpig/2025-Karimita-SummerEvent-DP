#> asset:mob/zombie_villager/always
#
# always function
#
# @within mob:tick/always/tick

# leaping attack
    # fix rotation
        execute if entity @s[tag=leap_attack.doing] run function asset:mob/zombie_villager/action/leap_attack/fix_facing_direction
    # add tag when leaping
        execute if entity @s[tag=leap_attack.doing,predicate=!lib:is_on_ground] run tag @s add leap_attack.abletoend
    # detect if should finish
        execute if entity @s[tag=leap_attack.abletoend,predicate=lib:is_on_ground] run function asset:mob/zombie_villager/action/leap_attack/finish