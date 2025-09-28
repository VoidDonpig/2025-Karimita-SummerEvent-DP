#> asset:item/dungeon_compass/offhand
#
# offhand
#
# @within asset:item/dungeon_compass/

# copy item
    data modify storage asset: dungeon_compass set from entity @s equipment.offhand

# set dimension to current dimension
    data modify storage asset: dungeon_compass.components."minecraft:lodestone_tracker".target.dimension set from entity @s Dimension

# set components
    data modify storage asset: dungeon_compass.components."minecraft:lodestone_tracker".tracked set value false

# updates x, y and z positions of the compass
    data modify storage asset: dungeon_compass.components."minecraft:lodestone_tracker".target.pos set value [I; 0,0,0]
    execute store result storage asset: dungeon_compass.components."minecraft:lodestone_tracker".target.pos[0] int 1 run data get entity @n[tag=dungeon_exit] Pos[0]
    execute store result storage asset: dungeon_compass.components."minecraft:lodestone_tracker".target.pos[1] int 1 run data get entity @n[tag=dungeon_exit] Pos[1]
    execute store result storage asset: dungeon_compass.components."minecraft:lodestone_tracker".target.pos[2] int 1 run data get entity @n[tag=dungeon_exit] Pos[2]

# set lore
    data modify storage asset: dungeon_compass.components."minecraft:lore" set value [{text:"コンパスは出口の方向を示している。",color:"gray",italic:0b},{text:"                         ",color:"dark_gray",strikethrough:1b},{text:"‣ ダンジョンアイテム",extra:[{text:"【",extra:[{text:"✪",color:"white",extra:[{text:"✪✪✪✪",color:"dark_gray",extra:[{text:"】",color:"white"}]}]}]}],color:"white",italic:0b}]

# custom data
    data modify storage asset: dungeon_compass.components."minecraft:custom_data" set value {custom_item:1b,custom_item_id:"dungeon_compass_activated",price:1,value:1,can_sell:0b}

# enchantment glint
    data modify storage asset: dungeon_compass.components."minecraft:enchantment_glint_override" set value true

# updates shulker box
    execute in world:admin_area run data modify block 0 0 0 Items[] set from storage asset: dungeon_compass

# set name
    execute in world:admin_area run item modify block 0 0 0 container.0 {function:"minecraft:set_name",entity:"this",name:[{text:"出口: ",italic:false,color:white},{nbt:"dungeon_compass.components.\"minecraft:lodestone_tracker\".target.pos[0]",storage:"asset:"},", ",{nbt:"dungeon_compass.components.\"minecraft:lodestone_tracker\".target.pos[1]",storage:"asset:"},", ",{nbt:"dungeon_compass.components.\"minecraft:lodestone_tracker\".target.pos[2]",storage:"asset:"}]}

# give item
    execute in world:admin_area run loot replace entity @s weapon.offhand mine 0 0 0 debug_stick

# remove the item
    data remove storage asset: dungeon_compass
    execute in world:admin_area run data remove block 0 0 0 Items