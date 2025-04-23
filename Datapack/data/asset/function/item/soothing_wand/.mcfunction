#> asset:item/soothing_wand/
#
# check
#
# @within player:trigger/rclicked/run

# check
    tag @s add cooltime_ok
    tag @s add mana_ok
    scoreboard players set $needed_mana temporary 50
    execute if predicate player:team/class.wizard run function player:class/wizard/ability/mana_saver/
    execute if predicate player:team/class.healer run function player:class/healer/ability/effective_support/
    function player:status/cooltime/check {name:healing_wand}
    execute if entity @s[tag=cooltime_ok] run function player:status/mana/use/check

# fail
    execute unless entity @s[tag=cooltime_ok] run function player:status/cooltime/fail {name:healing_wand}
    execute if entity @s[tag=cooltime_ok] unless entity @s[tag=mana_ok] run function player:status/mana/use/fail

# run
    execute if entity @s[tag=cooltime_ok] if entity @s[tag=mana_ok] run function asset:item/soothing_wand/do

# reset
    tag @s remove cooltime_ok
    tag @s remove mana_ok
    scoreboard players reset $needed_mana temporary