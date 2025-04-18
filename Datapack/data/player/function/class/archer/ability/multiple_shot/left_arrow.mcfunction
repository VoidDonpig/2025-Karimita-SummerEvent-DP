#> player:class/archer/ability/multiple_shot/left_arrow
#
# shoot left arrow
#
# @within player:class/archer/ability/multiple_shot/third_fail
#         player:class/archer/ability/multiple_shot/third_success


# summon arrow
    $summon minecraft:arrow ^ ^-0.3 ^ {damage:2.0d,Tags:["multiple_shot_arrow","not_init_arrow","not_data_set"],life:1200s,weapon:$(weapon),LeftOwner:0b}
    data modify entity @n[tag=not_init_arrow,tag=multiple_shot_arrow] Owner set from entity @s UUID
    execute in world:admin_area positioned 0.0 0.0 0.0 run tp 83a-51-1-0-1 ^-0.02 ^ ^2.6
    execute as @n[tag=not_init_arrow,tag=multiple_shot_arrow] run data modify entity @s Motion set from entity 83a-51-1-0-1 Pos
    damage @n[tag=not_init_arrow,tag=multiple_shot_arrow] 0.0
    tag @n[tag=not_init_arrow,tag=multiple_shot_arrow] remove not_init_arrow
    
    tag @s add left_shot