#> asset:item/artemis_armor/shot
#
# shoot other 2 arrows
#
# @within player:trigger/shot_arrow/

# add tag
    tag @s add this

# shoot arrows
    summon minecraft:arrow ^ ^ ^ {damage:2.0d,Tags:["artemis_armor_arrow","not_init_arrow"],life:1200s,LeftOwner:0b}
    data modify entity @n[tag=not_init_arrow,tag=artemis_armor_arrow] Owner set from entity @s UUID
    data modify entity @n[tag=not_init_arrow,tag=artemis_armor_arrow] weapon set from entity @p[tag=this] SelectedItem
    execute in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^0.2 ^ ^3.0
    data modify entity @n[tag=not_init_arrow,tag=artemis_armor_arrow] Motion set from entity 83a-51-1-0-0 Pos
    tag @n[tag=not_init_arrow,tag=artemis_armor_arrow] remove not_init_arrow

    summon minecraft:arrow ^ ^ ^ {damage:2.0d,Tags:["artemis_armor_arrow","not_init_arrow"],life:1200s,LeftOwner:0b}
    data modify entity @n[tag=not_init_arrow,tag=artemis_armor_arrow] Owner set from entity @s UUID
    data modify entity @n[tag=not_init_arrow,tag=artemis_armor_arrow] weapon set from entity @p[tag=this] SelectedItem
    execute in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^-0.2 ^ ^3.0
    data modify entity @n[tag=not_init_arrow,tag=artemis_armor_arrow] Motion set from entity 83a-51-1-0-0 Pos
    tag @n[tag=not_init_arrow,tag=artemis_armor_arrow] remove not_init_arrow

# remove tag 
    tag @s remove this