#> ui:crafter/page/weapon/craft/set_entry
#
# set entry
#
# @within ui:crafter/page/weapon/craft/init

# get and set
    $loot replace entity @s container.4 loot asset:item/$(result)
    data modify storage ui: entry_data.components set from entity @s Items[{Slot:4b}].components
    item modify entity @s container.4 ui:crafter/item_init

# recipe checks
    execute on passengers run tag @s add craft_ok
    execute on passengers run function ui:crafter/page/weapon/craft/count_item with storage ui: entry_data.recipe_components[0]

# reset
    data remove storage ui: entry_data