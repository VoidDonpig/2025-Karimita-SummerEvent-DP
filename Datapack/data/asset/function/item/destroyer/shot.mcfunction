#> asset:item/destroyer/shot
#
# item process
#
# @within player:trigger/rclicked/

# add score
    scoreboard players set @s shortbow_cooltime 4
    scoreboard players set @s charging_bow 20

# add tag
    tag @s add arrow_shot

# playsound
    playsound entity.arrow.shoot player @a ~ ~ ~ 1 1 0

# shoot arrows
    summon minecraft:arrow ^ ^-0.2 ^ {damage:2.0d,Tags:["destroyer_arrow","not_init_arrow"],life:1200s,LeftOwner:0b}
    data modify entity @n[tag=not_init_arrow,tag=destroyer_arrow] Owner set from entity @s UUID
    data modify entity @n[tag=not_init_arrow,tag=destroyer_arrow] weapon set from entity @p[tag=arrow_shot] SelectedItem
    execute in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-1 ^0.05 ^ ^2.8
    execute as @n[tag=not_init_arrow,tag=destroyer_arrow] run data modify entity @s Motion set from entity 83a-51-1-0-1 Pos
    damage @n[tag=not_init_arrow,tag=destroyer_arrow] 0.0
    tag @n[tag=not_init_arrow,tag=destroyer_arrow] remove not_init_arrow

    summon minecraft:arrow ^ ^ ^ {damage:2.0d,Tags:["destroyer_arrow","not_init_arrow"],life:1200s,LeftOwner:0b}
    data modify entity @n[tag=not_init_arrow,tag=destroyer_arrow] Owner set from entity @s UUID
    data modify entity @n[tag=not_init_arrow,tag=destroyer_arrow] weapon set from entity @p[tag=arrow_shot] SelectedItem
    execute in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-1 ^ ^ ^3.0
    execute as @n[tag=not_init_arrow,tag=destroyer_arrow] run data modify entity @s Motion set from entity 83a-51-1-0-1 Pos
    damage @n[tag=not_init_arrow,tag=destroyer_arrow] 0.0
    tag @n[tag=not_init_arrow,tag=destroyer_arrow] remove not_init_arrow

    summon minecraft:arrow ^ ^-0.2 ^ {damage:2.0d,Tags:["destroyer_arrow","not_init_arrow"],life:1200s,LeftOwner:0b}
    data modify entity @n[tag=not_init_arrow,tag=destroyer_arrow] Owner set from entity @s UUID
    data modify entity @n[tag=not_init_arrow,tag=destroyer_arrow] weapon set from entity @p[tag=arrow_shot] SelectedItem
    execute in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-1 ^-0.05 ^ ^2.8
    execute as @n[tag=not_init_arrow,tag=destroyer_arrow] run data modify entity @s Motion set from entity 83a-51-1-0-1 Pos
    damage @n[tag=not_init_arrow,tag=destroyer_arrow] 0.0
    tag @n[tag=not_init_arrow,tag=destroyer_arrow] remove not_init_arrow

# trigger
    execute at @s run function player:trigger/shot_arrow/