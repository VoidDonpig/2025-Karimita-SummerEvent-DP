#> asset:villager/bailey/init

# set data
    data modify entity @s Silent set value 1b
    data modify entity @s Invulnerable set value 1b
    data modify entity @s CustomNameVisible set value 1b
    data modify entity @s NoAI set value 1b
    data modify entity @s PersistenceRequired set value 1b

    data modify entity @s CustomName set value [{"text": "ベイリー","color": "white","bold":true}]

    data modify entity @s VillagerData.level set value 99
    data modify entity @s VillagerData.profession set value "minecraft:librarian"
    data modify entity @s VillagerData.type set value "minecraft:plains"

    tag @s add npc
    tag @s add class_changer_npc
    tag @s add already_init

    data merge entity @s {Offers:{Recipes:[]}}