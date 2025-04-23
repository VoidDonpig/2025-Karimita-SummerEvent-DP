#> ui:shop/page/set_entry
#
# set entry
#
# @context shop menu

# get and set
    $loot replace entity @s container.$(Slot) loot asset:item/$(id)
    $data modify storage ui: entry_data.components set from entity @s Items[{Slot:$(Slot)b}].components
    $item modify entity @s container.$(Slot) ui:shop/item_init
    data remove storage ui: entry_data