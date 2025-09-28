#> asset:item/ancestral_dragon_bow/shot
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
    summon minecraft:arrow ^ ^ ^ {damage:2.0d,Tags:["ancestral_dragon_bow_arrow","not_init_arrow"],life:1200s,LeftOwner:0b}
    data modify entity @n[tag=not_init_arrow,tag=ancestral_dragon_bow_arrow] Owner set from entity @s UUID
    data modify entity @n[tag=not_init_arrow,tag=ancestral_dragon_bow_arrow] weapon set from entity @p[tag=arrow_shot] SelectedItem
    execute in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^3.0
    data modify entity @n[tag=not_init_arrow,tag=ancestral_dragon_bow_arrow] Motion set from entity 83a-51-1-0-0 Pos
    tag @n[tag=not_init_arrow,tag=ancestral_dragon_bow_arrow] remove not_init_arrow

# trigger
    execute at @s run function player:trigger/shot_arrow/