#> asset:item/celestial_blade/
#
# check
#
# @handles asset:item/celestial_blade

# check
    tag @s add click_ok
    tag @s add mana_ok
    function asset:item/click_check
    function asset:item/celestial_blade/get_needed_mana
    function player:status/mana/use/check
# fail
    execute if entity @s[tag=click_ok] unless entity @s[tag=mana_ok] run function player:status/mana/use/fail

# run
    execute if entity @s[tag=click_ok] if entity @s[tag=mana_ok] run function asset:item/celestial_blade/do

# reset
    tag @s remove mana_ok
    tag @s remove click_ok
    scoreboard players reset $needed_mana temporary
    advancement revoke @s only asset:item/celestial_blade