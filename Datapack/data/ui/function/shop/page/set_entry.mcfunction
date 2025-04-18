#> ui:shop/page/set_entry
# 商品単体を棚に並べる

$loot replace entity @s container.$(Slot) loot asset:item/$(id)
$data modify storage ui: entry_data.components set from entity @s Items[{Slot:$(Slot)b}].components
$item modify entity @s container.$(Slot) ui:shop/item_init
data remove storage ui: entry_data