#> player:class/assassin/
#
# assassin tick
#
# @within player:tick

# bloodlust
    execute if score @s bloodlust_timer matches 1.. run function player:class/assassin/ability/bloodlust/active

# assassin leap
    function player:class/assassin/ability/assassin_leap/