#> ui:shop/open
#
# ui init
#
# @handles ui:open/shop

# common
    function ui:open

# playsound
    playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1.0 1.0 0.0

# reset
    advancement revoke @s only ui:open/shop