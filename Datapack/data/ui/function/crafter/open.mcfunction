#> ui:crafter/open
#
# open process
#
# @handles ui:open/crafter

# common process
    function ui:open

# sound
    playsound minecraft:block.crafter.craft master @s ~ ~ ~ 1.0 1.0 0.0

# reset
    advancement revoke @s only ui:open/crafter