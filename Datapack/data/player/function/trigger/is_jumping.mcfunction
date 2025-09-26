#> player:trigger/is_jumping
#
# is jumping
#
# @within player:tick

# shadow step
    execute if predicate player:team/class.assassin if entity @s[tag=!jumping] run function player:class/assassin/ability/shadow_step/check