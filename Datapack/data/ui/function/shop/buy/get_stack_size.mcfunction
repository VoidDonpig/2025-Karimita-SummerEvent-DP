#> ui:shop/buy/get_stack_size
#
# get max_stack_size
#
# @within ui:shop/buy/init

# get data
    $execute in world:admin_area run loot replace block 0 0 0 container.0 loot asset:item/$(id)
    execute in world:admin_area store result score $stackable temporary run data get block 0 0 0 Items[{Slot:0b}].components."minecraft:custom_data".stackable