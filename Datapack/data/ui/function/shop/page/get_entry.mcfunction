#> ui:shop/page/get_entry
#
# store products data
#
# @context shop ui

# set data
    $data modify storage ui: entry_data.id set from storage ui: products[$(number)]
    $data modify storage ui: entry_data.Slot set value 1$(number)