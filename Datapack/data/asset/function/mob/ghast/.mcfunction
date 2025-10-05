#> asset:mob/ghast/
#
# ghast tick
#
# @within mob:tick/tick/tick

# add target
    execute on target run tag @s add target

# sorrow aura
    execute if score $difficulty_level world matches 1.. if predicate lib:periodic/40 run function asset:mob/ghast/action/sorrow_aura/

# remove target
    tag @n[tag=target] remove target