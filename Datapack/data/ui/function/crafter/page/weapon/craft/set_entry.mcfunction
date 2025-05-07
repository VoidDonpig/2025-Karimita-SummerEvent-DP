#> ui:crafter/page/weapon/craft/set_entry
#
# set entry
#
# @within ui:crafter/page/weapon/craft/init

# get and set
    $loot replace entity @s container.4 loot asset:item/$(result)
    data modify storage ui: entry_data.components set from entity @s Items[{Slot:4b}].components
    item modify entity @s container.4 ui:crafter/item_init

# set graphic recipe
    data modify entity @s Items append from storage ui: entry_data.grecipe[{Slot:9b}]
    data modify entity @s Items append from storage ui: entry_data.grecipe[{Slot:10b}]
    data modify entity @s Items append from storage ui: entry_data.grecipe[{Slot:11b}]
    data modify entity @s Items append from storage ui: entry_data.grecipe[{Slot:12b}]
    data modify entity @s Items append from storage ui: entry_data.grecipe[{Slot:13b}]
    data modify entity @s Items append from storage ui: entry_data.grecipe[{Slot:14b}]
    data modify entity @s Items append from storage ui: entry_data.grecipe[{Slot:15b}]
    data modify entity @s Items append from storage ui: entry_data.grecipe[{Slot:16b}]
    data modify entity @s Items append from storage ui: entry_data.grecipe[{Slot:17b}]

# recipe checks
    execute on passengers run tag @s add craft_ok
    execute on passengers run function ui:crafter/page/weapon/craft/count_item with storage ui: entry_data.recipe_components[0]

# reset
    data remove storage ui: entry_data