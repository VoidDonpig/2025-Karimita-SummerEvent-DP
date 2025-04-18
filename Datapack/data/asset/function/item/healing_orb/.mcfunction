#> asset:item/healing_orb/
#
# ability item check
#
# @within player:trigger/rclicked/run

# check
    tag @s add mana_ok
    scoreboard players operation $needed_mana temporary = @s max_mana
    scoreboard players operation $needed_mana temporary /= $2 constant
    execute if predicate player:team/class.healer run function player:class/healer/ability/effective_support/
    function player:status/mana/use/check

# fail
    execute unless entity @s[tag=mana_ok] run function player:status/mana/use/fail

# run
    execute if entity @s[tag=mana_ok] run function asset:item/healing_orb/do

# reset
    tag @s remove mana_ok
    scoreboard players reset $needed_mana temporary