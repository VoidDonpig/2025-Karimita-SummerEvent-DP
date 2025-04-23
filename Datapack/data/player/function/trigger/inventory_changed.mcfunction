#> player:trigger/inventory_changed
#
# inventory changed event
#
# @within player:tick

# add status update flag tag
    tag @s add statusupdate

# reset
    advancement revoke @s only player:trigger/inventory_changed