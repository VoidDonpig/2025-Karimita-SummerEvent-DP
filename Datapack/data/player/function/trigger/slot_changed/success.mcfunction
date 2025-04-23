#> player:trigger/slot_changed/success
#
# success eevnt
#
# @within player:trigger/slot_changed/check

# add flag tag
    tag @s add statusupdate

# update score
    scoreboard players operation @s previous_slot = $current_slot temporary