#> player:trigger/is_jumping
#
# is jumping
#
# @within player:tick

# revoke
    advancement revoke @s only player:trigger/is_jumping

# jumping
    tag @s add add_jumping_tag

# shadow step
    execute if predicate player:team/class.assassin if entity @s[tag=!jumping] run function player:class/assassin/ability/shadow_step/check