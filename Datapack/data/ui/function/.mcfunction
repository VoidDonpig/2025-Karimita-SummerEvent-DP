#> ui:
#
# ui main tick
#
# @within #minecraft:tick

# teleport to linked player
    execute if entity @a[tag=using_ui] at @a[tag=using_ui] as @e[type=minecraft:interaction,tag=ui_interaction,distance=..4] if score @s player.id = @p player.id run tp @s @p

# prevent item drop
    execute if entity @a[tag=using_ui] at @a[tag=using_ui] positioned ~ ~1.32 ~ if entity @e[type=minecraft:item,distance=..0.01] run function ui:item_kill

# tick
    execute if entity @a[tag=using_ui] at @a[tag=using_ui] as @e[type=minecraft:interaction,tag=ui_interaction,distance=..0.01] on passengers on passengers if entity @s[tag=crafter_marker] run function ui:crafter/
    execute if entity @a[tag=using_ui] at @a[tag=using_ui] as @e[type=minecraft:interaction,tag=ui_interaction,distance=..0.01] on passengers on passengers if entity @s[tag=class_changer_marker] run function ui:class_changer/
    execute if entity @a[tag=using_ui] at @a[tag=using_ui] as @e[type=minecraft:interaction,tag=ui_interaction,distance=..0.01] on passengers on passengers if entity @s[tag=combiner_marker] run function ui:combiner/
    execute if entity @a[tag=using_ui] at @a[tag=using_ui] as @e[type=minecraft:interaction,tag=ui_interaction,distance=..0.01] on passengers on passengers if entity @s[tag=shop_marker] run function ui:shop/
    execute if entity @a[tag=using_ui] at @a[tag=using_ui] as @e[type=minecraft:interaction,tag=ui_interaction,distance=..0.01] on passengers on passengers if entity @s[tag=crafter_marker] run function ui:crafter/