#> asset:mob/zombie/action/leap_attack/finish
#
# finish action
#
# @within asset:mob/zombie/

# add tag on target
    execute on target run tag @s add target

# remove tag
    tag @s remove leap_attack.doing
    tag @s remove leap_attack.abletoend

# smash attack
    execute if score $difficulty_level world matches 5.. run function asset:mob/zombie/action/leap_attack/smash_attack

# face opponent
    execute facing entity @n[tag=target] eyes run tp @s ~ ~ ~ ~ ~

# remove attribute
    attribute @s minecraft:attack_knockback modifier remove leap_attack.attack_knockback_increase

# remove target tag
    tag @n[tag=target] remove target