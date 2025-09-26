#> player:trigger/is_jumping
#
# is jumping
#
# @within player:tick

# add jumping score
    scoreboard players add @s is_jumping 1

# shadow step
    execute if predicate player:team/class.assassin run function player:class/assassin/ability/shadow_step/check