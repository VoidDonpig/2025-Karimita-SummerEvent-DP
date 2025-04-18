#> asset:villager/smith/init

# set data
    data modify entity @s Silent set value 1b
    data modify entity @s Invulnerable set value 1b
    data modify entity @s CustomNameVisible set value 1b
    data modify entity @s NoAI set value 1b
    data modify entity @s PersistenceRequired set value 1b

    data modify entity @s CustomName set value [{"text": "スミス","color": "white","bold":true}]

    data modify entity @s data.shop_data append value ["item_package/iron","food/solid_chicken"]

    data modify entity @s VillagerData.level set value 99
    data modify entity @s VillagerData.profession set value "minecraft:weaponsmith"
    data modify entity @s VillagerData.type set value "minecraft:plains"

    tag @s add npc
    tag @s add shop_npc
    tag @s add already_init

    data merge entity @s {Offers:{Recipes:[]}}