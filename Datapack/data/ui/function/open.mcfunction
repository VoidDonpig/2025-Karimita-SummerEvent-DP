#> ui:open

# tag
    tag @s add opened_ui
    tag @s add using_ui

# UI init
    execute anchored eyes positioned ~ ~1.1 ~ as @e[type=minecraft:interaction,tag=ui_interaction,distance=..2] run function ui:init

# UI close tick
    execute unless predicate lib:have_helmet run item replace entity @s armor.head with minecraft:nautilus_shell
    execute in world:admin_area run function ui:close_detector/add

# reset
    tag @s remove opened_ui