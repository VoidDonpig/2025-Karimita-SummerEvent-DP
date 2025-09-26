#> asset:item/dungeon_compass/
#
# dungeon compass
#
# @within player:advancement_tick

# create asset: storage and update nbt
    data modify storage asset: Items[] set from entity @s SelectedItem
    data modify storage asset: Items[].Slot set value 0b

# set dimension to current dimension
    data modify storage asset: Items[].components."minecraft:lodestone_tracker".target.dimension set from entity @s Dimension

# set components
    data modify storage asset: Items[].components."minecraft:lodestone_tracker".tracked set value false

# updates x, y and z positions of the compass
    data modify storage asset: Items[].components."minecraft:lodestone_tracker".target.pos set value [I; 0,0,0]
    execute store result storage asset: Items[].components."minecraft:lodestone_tracker".target.pos[0] int 1 run data get entity @n[tag=dungeon_exit] Pos[0]
    execute store result storage asset: Items[].components."minecraft:lodestone_tracker".target.pos[1] int 1 run data get entity @n[tag=dungeon_exit] Pos[1]
    execute store result storage asset: Items[].components."minecraft:lodestone_tracker".target.pos[2] int 1 run data get entity @n[tag=dungeon_exit] Pos[2]

# set lore
    data modify storage asset: Items[].components."minecraft:lore" set value [{text:"コンパスは出口の方向を示している。",color:"gray",italic:0b},{text:"                         ",color:"dark_gray",strikethrough:1b},{text:"‣ ダンジョンアイテム",extra:[{text:"【",extra:[{text:"✪",color:"white",extra:[{text:"✪✪✪✪",color:"dark_gray",extra:[{text:"】",color:"white"}]}]}]}],color:"white",italic:0b}]

# custom data
    data modify storage asset: Items[].components."minecraft:custom_data" set value {custom_item:1b,custom_item_id:"dungeon_compass_activated",price:1,value:1,can_sell:0b}

# enchantment glint
    data modify storage asset: Items[].components."minecraft:enchantment_glint_override" set value true

# updates shulker box
    execute in world:admin_area run data modify block 0 0 0 Items[] set from storage asset: Items[]

# set name
    execute in world:admin_area run item modify block 0 0 0 container.0 {function:"minecraft:set_name",entity:"this",name:[{text:"出口: ",italic:false,color:white},{nbt:"Items[].components.\"minecraft:lodestone_tracker\".target.pos[0]",storage:"asset:"},", ",{nbt:"Items[].components.\"minecraft:lodestone_tracker\".target.pos[1]",storage:"asset:"},", ",{nbt:"Items[].components.\"minecraft:lodestone_tracker\".target.pos[2]",storage:"asset:"}]}

# give item
    execute in world:admin_area run loot replace entity @s weapon.mainhand 1 mine 0 0 0 debug_stick

# reset
    data remove storage asset: Items