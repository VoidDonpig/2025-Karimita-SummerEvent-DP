#> ui:crafter/page/weapon/craft/
#
# craft item
#
# @within ui:crafter/page/weapon/craft/check

# message
    execute on vehicle on vehicle on attacker run tellraw @s [{nbt:"give_item.components.\"minecraft:item_name\"",storage:"ui:",interpret:true}," ",{text:"をクラフトした！",color:"green"}]

# clear items
    data modify entity @s data.crafting_item set from storage ui: entry_data
    function ui:crafter/page/weapon/craft/clear_items with entity @s data.crafting_item.recipe_components[0]

# give item
    execute on vehicle on vehicle on attacker run function ui:return_item/give

# playsound
    execute on vehicle on vehicle on attacker run playsound block.note_block.pling master @s ~ ~ ~ 1 2
    tag @s remove playsound_once