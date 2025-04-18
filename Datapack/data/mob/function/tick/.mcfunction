#> mob:tick/
#
# mob tick
#
# @within function core:main

# tick
    execute if data entity @s {data:{mob:{have_always_action:1b}}} run function mob:tick/always/
    execute if predicate lib:is_having_target run function mob:tick/tick/