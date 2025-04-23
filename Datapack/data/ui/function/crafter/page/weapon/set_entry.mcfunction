#> ui:crafter/page/weapon/set_entry 
#
# set entry
#
# @context crafter menu

# get and set
    $loot replace entity @s container.$(Slot) loot asset:item/$(result)
    $data modify storage ui: entry_data.components set from entity @s Items[{Slot:$(Slot)b}].components
    $item modify entity @s container.$(Slot) ui:crafter/item_init
    data remove storage ui: entry_data