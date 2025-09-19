#> asset:item/eternal_carrot/reset
#
# reset item
#
# @within player:status/cooltime/remove

# get inventory
    data modify storage asset: Inventory set from entity @s Inventory
    # get slot
        function asset:item/eternal_carrot/get_slot
    # protect offhand item
        item modify entity @s weapon.offhand {function:"minecraft:set_custom_data",tag:{clear_temporary_protection:1b}}
    # clear used item
        clear @s *[custom_data~{custom_item_id:"eternal_carrot_eaten",clear_temporary_protection:1b},!custom_data~{clear_temporary_protection:1b}]

# return new item   
    execute if data storage asset: Slot[] run function asset:item/eternal_carrot/return

# reset
    scoreboard players reset @s eternal_carrot_cooltime