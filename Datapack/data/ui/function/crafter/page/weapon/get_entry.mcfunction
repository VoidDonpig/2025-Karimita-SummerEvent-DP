#> ui:crafter/page/weapon/get_entry
#
# store items data
#
# @context crafter ui

# set data
    $data modify storage ui: entry_data set from storage ui: craftable_items[$(number)]
    $data modify storage ui: entry_data.Slot set value 1$(number)