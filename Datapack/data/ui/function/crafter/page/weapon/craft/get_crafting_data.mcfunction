# ui:crafter/page/weapon/craft/get_crafting_data
#
# get crafting item data
#
# @within ui:crafter/page/weapon/craft/check

# get crafting item data
    $execute in world:admin_area run loot replace block 0 0 0 container.0 loot asset:item/$(result)
    execute in world:admin_area run data modify storage ui: give_item set from block 0 0 0 Items[{Slot:0b}]