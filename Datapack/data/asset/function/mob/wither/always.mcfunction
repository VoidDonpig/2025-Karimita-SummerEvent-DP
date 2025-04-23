#> mob:wither/always
#
# always action
#
# @within mob:tick/always/tick

# autokill
    scoreboard players add @s autokill_timer 1
    execute if predicate lib:is_having_target run scoreboard players reset @s autokill_timer
    execute if score @s autokill_timer matches 300.. run function asset:mob/wither/remove

# reset action
    execute unless predicate lib:is_having_target run function asset:mob/wither/action/reset