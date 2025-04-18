#> player:trigger/slot_changed/check
#
# check if changed slot
#
# @within player:tick

# check
    execute store result score $current_slot temporary run data get entity @s SelectedItemSlot

# if true, then run
    execute unless score @s previous_slot = $current_slot temporary run function player:trigger/slot_changed/success

# reset
    scoreboard players reset $current_slot temporary