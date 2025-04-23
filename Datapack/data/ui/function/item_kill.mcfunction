#> ui:item_kill

# kill item
    execute as @e[type=minecraft:item,distance=..0.01] if data entity @s Item.components.minecraft:custom_data.ui{type:"blank"} run kill @s
    execute as @e[type=minecraft:item,distance=..0.01] if data entity @s Item.components.minecraft:custom_data.ui{type:"goods"} run kill @s
    execute as @e[type=minecraft:item,distance=..0.01] if data entity @s Item.components.minecraft:custom_data.ui{type:"none"} run kill @s
    execute as @e[type=minecraft:item,distance=..0.01] if data entity @s Item.components.minecraft:custom_data.ui{type:"backward"} run kill @s
    execute as @e[type=minecraft:item,distance=..0.01] if data entity @s Item.components.minecraft:custom_data.ui{type:"forward"} run kill @s
    execute as @e[type=minecraft:item,distance=..0.01] if data entity @s Item.components.minecraft:custom_data.ui{type:"sell"} run kill @s
    execute as @e[type=minecraft:item,distance=..0.01] if data entity @s Item.components.minecraft:custom_data.ui{type:"buy"} run kill @s