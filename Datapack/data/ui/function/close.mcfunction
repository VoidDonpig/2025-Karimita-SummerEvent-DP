#> ui:close
#
# close ui
#
# @context ui

# clear
    clear @a *[custom_data~{ui:{type:"blank"}}]
    clear @a *[custom_data~{ui:{type:"none"}}]
    clear @a *[custom_data~{ui:{type:"goods"}}]
    clear @a *[custom_data~{UI:{TYPE:"backward"}}]
    clear @a *[custom_data~{ui:{type:"forward"}}]

# UI close
    execute if predicate ui:nautilus_shell run item replace entity @s armor.head with minecraft:air
    execute if predicate lib:have_helmet in world:admin_area run function ui:close_detector/remove

# return item in UI
    execute as @e[type=minecraft:interaction,tag=ui_interaction,distance=..0.01] run function ui:cleanup

# reset
    tag @s remove using_ui
    advancement revoke @s only ui:close