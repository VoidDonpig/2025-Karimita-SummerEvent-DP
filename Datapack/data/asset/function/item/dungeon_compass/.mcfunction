#> asset:item/dungeon_compass/
#
# dungeon compass
#
# @within player:tick

# create asset:dungeon_compass storage and update nbt
    data modify storage asset:dungeon_compass Items[] set from entity @s Inventory[{components:{"minecraft:custom_data":{custom_item_id:"dungeon_compass"}}}]
    data modify storage asset:dungeon_compass Items[].Slot set value 0b

# set dimension to our current dimension
    data modify storage asset:dungeon_compass Items[].components."minecraft:lodestone_tracker".target.dimension set from entity @s Dimension

# updates x, y and z positions of the compass
    data modify storage asset:dungeon_compass Items[].components."minecraft:lodestone_tracker".target.pos set value [I; 0,0,0]
    data modify storage asset:dungeon_compass Items[].components."minecraft:lodestone_tracker".target.pos[0] set from entity @n[tag=dungeon_exit] Pos[0]
    data modify storage asset:dungeon_compass Items[].components."minecraft:lodestone_tracker".target.pos[1] set from entity @n[tag=dungeon_exit] Pos[1]
    data modify storage asset:dungeon_compass Items[].components."minecraft:lodestone_tracker".target.pos[2] set from entity @n[tag=dungeon_exit] Pos[2]

# set name 
    data modify storage asset:dungeon_compass Items[].components."minecraft:custom_name" set value {"text":"ダンジョンコンパス","color":white,italic:false}

# updates shulker box from asset:dungeon_compass storage Items[]
    execute in world:admin_area run data modify block 0 0 0 Items[] set from storage asset:dungeon_compass Items[]

# replace "tracking_device" in offhand, mainhand and last hotbar slot, updating Runner position
    execute in world:admin_area run loot replace entity @s weapon.mainhand 1 mine 0 0 0 debug_stick

# remove asset:dungeon_compass
    data remove storage asset:dungeon_compass Items