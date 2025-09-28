#> mob:tick/
#
# mob tick
#
# @within function core:main

# tick
    execute if entity @s[tag=mob.have_always_action] run function mob:tick/always/
    execute if predicate lib:is_having_target run function mob:tick/tick/