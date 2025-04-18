#> asset:item/ultimate_wither_sword/
#
# check
#
# @handles asset:item/ultimate_wither_sword

# check
    tag @s add click_ok
    tag @s add mana_ok
    function asset:item/click_check
    scoreboard players set $needed_mana temporary 300
    execute if predicate player:team/class.wizard run function player:class/wizard/ability/mana_saver/
    function player:status/mana/use/check
# fail
    execute if entity @s[tag=click_ok] unless entity @s[tag=mana_ok] run function player:status/mana/use/fail

# run
    execute if entity @s[tag=click_ok] if entity @s[tag=mana_ok] run function asset:item/ultimate_wither_sword/do

# reset
    tag @s remove mana_ok
    tag @s remove click_ok
    scoreboard players reset $needed_mana temporary
    advancement revoke @s only asset:item/ultimate_wither_sword