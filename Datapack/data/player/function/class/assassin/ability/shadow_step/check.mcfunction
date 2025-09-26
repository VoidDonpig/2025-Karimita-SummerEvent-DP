#> player:class/assassin/ability/shadow_step/check
#
# check
#
# @within player:trigger/is_jumping

# check
    execute if entity @s[tag=!player.assassin.shadow_step.doing] unless score @s shadow_step_cooltime matches 1.. unless score @s shadow_step_unavailable_timer matches 1.. run function player:class/assassin/ability/shadow_step/