#> asset:objecct/reflexivization_orb/mana_regen
#
# boost mana regen
#
# @within player:status/mana/regen/

# boost
    scoreboard players operation $regen_mana temporary *= $5 constant
    scoreboard players operation $regen_mana temporary /= $2 constant