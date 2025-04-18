#> asset:mob/wither_skeleton/action/back_step/finish
#
# finish action
#
# @within asset:mob/wither_skeleton/

# add tag on target
    execute on target run tag @s add target

# remove tag
    tag @s remove back_step.doing
    tag @s remove back_step.abletoend

# smash attack
    execute if score $difficulty_level world matches 5.. run function asset:mob/wither_skeleton/action/back_step/smash_attack

# face opponent
    execute facing entity @n[tag=target] eyes run tp @s ~ ~ ~ ~ ~

# remove attribute
    attribute @s minecraft:attack_knockback modifier remove back_step.attack_knockback_increase

# remove target tag
    tag @n[tag=target] remove target