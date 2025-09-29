#> asset:item/frost_wand/
#
# check
#
# @within player:trigger/rclicked/run

# check
    tag @s add cooltime_ok
    tag @s add mana_ok
    scoreboard players set $needed_mana temporary 30
    execute if predicate player:team/class.wizard run function player:class/wizard/ability/mana_saver/
    function player:status/cooltime/check {name:frost_wand}
    execute if entity @s[tag=cooltime_ok] run function player:status/mana/use/check

# fail
    execute unless entity @s[tag=cooltime_ok] run function player:status/cooltime/fail {name:frost_wand}
    execute if entity @s[tag=cooltime_ok] unless entity @s[tag=mana_ok] run function player:status/mana/use/fail

# run
    execute if entity @s[tag=cooltime_ok] if entity @s[tag=mana_ok] run function asset:item/frost_wand/do

# reset
    tag @s remove cooltime_ok
    tag @s remove mana_ok
    scoreboard players reset $needed_mana temporary