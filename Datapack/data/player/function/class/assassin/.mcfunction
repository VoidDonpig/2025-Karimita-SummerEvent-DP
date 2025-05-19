#> player:class/assassin/
#
# assassin tick
#
# @within player:tick

# bloodlust
    execute if score @s bloodlust_timer matches 1.. run function player:class/assassin/ability/bloodlust/active

# vicacious ferocity
    function player:class/assassin/ability/vicacious_ferocity/